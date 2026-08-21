import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:electronics_store/data/model/order/order_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracking_event.dart';
part 'tracking_state.dart';
part 'tracking_bloc.freezed.dart';

class TrackingBloc extends Bloc<TrackingEvent, TrackingState> {
  TrackingBloc() : super(TrackingState()) {
    on<_TrackingStarted>(_onTrackingStarted);
    on<_GetCurrentLocation>(_onGetCurrentLocation);
  }

  // بدء التتبع وتعيين بيانات الطلب
  Future<void> _onTrackingStarted(
    _TrackingStarted event,
    Emitter<TrackingState> emit,
  ) async {
    // تعيين الطلب في الحالة الأولية
    emit(state.copyWith(order: event.order));
  }

  // فحص الصلاحيات والاستماع لتدفق الموقع المباشر
  Future<void> _onGetCurrentLocation(
    _GetCurrentLocation event,
    Emitter<TrackingState> emit,
  ) async {
    // التحقق من وجود بيانات الطلب قبل البدء في التحميل
    if (state.order == null) {
      // إرسال حالة الفشل في حال عدم وجود بيانات الطلب
      return emit(
        state.copyWith(
          status: _ServerFailure("لم يتم العثور على بيانات الطلب"),
        ),
      );
    }

    // 1. إرسال حالة التحميل
    emit(state.copyWith(status: const _Loading()));

    // 2. الاستماع للتدفق وتحديث الحالة
    await emit.forEach<DocumentSnapshot>(
      FirebaseFirestore.instance
          .collection("delivery")
          .doc(state.order!.id.toString())
          .snapshots(),
      onData: (snapshot) {
        // في حال وجود المستند في Firestore
        if (snapshot.exists) {
          // استخراج خط العرض
          final destLat = snapshot.get("lat");
          // استخراج خط الطول
          final destLong = snapshot.get("long");

          // تحديث حالة النجاح وإرسال الإحداثيات
          return state.copyWith(
            status: const TrackingStatus.loaded(),
            destLat: destLat,
            destLong: destLong,
          );
        }

        // حماية من التعليق: في حال عدم وجود المستند يتم تحويل الحالة إلى loaded
        return state.copyWith(status: const TrackingStatus.loaded());
      },
      onError: (error, stackTrace) {
        // إرسال حالة الفشل عند حدوث خطأ في الاتصال
        return state.copyWith(
          status: _ServerFailure("حدث خطأ أثناء جلب الموقع المباشر"),
        );
      },
    );
  }
}
