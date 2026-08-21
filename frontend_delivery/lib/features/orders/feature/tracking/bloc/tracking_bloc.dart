import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:electronics_store_delivery/core/services/location_service.dart';
import 'package:electronics_store_delivery/data/model/order/order_model.dart';
import 'package:electronics_store_delivery/features/orders/data/orders_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'tracking_event.dart';
part 'tracking_state.dart';
part 'tracking_bloc.freezed.dart';

class TrackingBloc extends Bloc<TrackingEvent, TrackingState> {
  // حقن واجهة خدمة الموقع
  final LocationService locationService;
  final OrdersData ordersData;

  // متغير لمراقبة أخر وقت تم فيه التحديث في الفايربيس
  DateTime? _lastFirebaseUpdate;

  TrackingBloc({required this.locationService, required this.ordersData})
    : super(TrackingState()) {
    on<_TrackingStarted>(_onTrackingStarted);
    on<_GetCurrentLocation>(_onGetCurrentLocation);
    on<_DoneDelivery>(_onDoneDelivery);
  }

  // بدء التتبع وتعيين بيانات الطلب
  Future<void> _onTrackingStarted(
    _TrackingStarted event,
    Emitter<TrackingState> emit,
  ) async {
    // تعيين الطلب في الحالة الأولية
    emit(state.copyWith(status: TrackingStatus.loaded(), order: event.order));
  }

  // فحص الصلاحيات والاستماع لتدفق الموقع المباشر
  Future<void> _onGetCurrentLocation(
    _GetCurrentLocation event,
    Emitter<TrackingState> emit,
  ) async {
    // 1. إرسال حالة التحميل
    emit(state.copyWith(status: const _Loading()));

    // 2. التحقق من تفعيل خدمة الـ GPS في الجهاز
    bool serviceEnabled = await locationService.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return emit(
        state.copyWith(status: _ServerFailure("الرجاء تشغيل إعدادات الموقع")),
      );
    }

    // 3. فحص صلاحيات الوصول للموقع
    LocationPermission permission = await locationService.checkPermission();

    if (permission == LocationPermission.denied) {
      // طلب الصلاحية من المستخدم
      permission = await locationService.requestPermission();
      if (permission == LocationPermission.denied) {
        return emit(
          state.copyWith(status: _ServerFailure("تم رفض الوصول للموقع")),
        );
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return emit(
        state.copyWith(
          status: _ServerFailure("صلاحيات الموقع مرفوضة بشكل دائم"),
        ),
      );
    }

    // 4. الاستماع للبث المباشر وتحديث Firestore بشكل آمن كل 5 ثوانٍ
    await emit.forEach<Position>(
      locationService.getPositionStream(),
      onData: (position) {
        final now = DateTime.now();

        // تحديث الفايربيس فقط إذا مرت 5 ثوانٍ أو أكثر على آخر تحديث
        if (_lastFirebaseUpdate == null ||
            now.difference(_lastFirebaseUpdate!) >=
                const Duration(seconds: 10)) {
          _lastFirebaseUpdate = now;

          // تحديث بيانات الموقع في Firestore مع الدمج
          if (state.order != null) {
            FirebaseFirestore.instance
                .collection("delivery")
                .doc(state.order!.id.toString())
                .set({
                  'lat': position.latitude,
                  'long': position.longitude,
                  'delivery_id': state.order!.deliveryId,
                }, SetOptions(merge: true));
          }
        }

        // إرجاع الإحداثيات الجديدة للواجهة فوراً لتحديث الشاشة
        return state.copyWith(status: const _Loaded(), position: position);
      },
      onError: (error, stackTrace) {
        // معالجة الخطأ في حال حدوثه أثناء البث
        return state.copyWith(
          status: _ServerFailure("حدث خطأ أثناء تتبع الموقع: $error"),
        );
      },
    );
  }

  Future<void> _onDoneDelivery(
    _DoneDelivery event,
    Emitter<TrackingState> emit,
  ) async {
    emit(state.copyWith(status: _Loading()));

    var response = await ordersData.doneDelivery(event.orderId);

    response.fold(
      (failure) =>
          emit(state.copyWith(status: _ServerFailure(failure.message))),
      (message) {
        emit(state.copyWith(status: _Success(message)));
      },
    );
  }
}
