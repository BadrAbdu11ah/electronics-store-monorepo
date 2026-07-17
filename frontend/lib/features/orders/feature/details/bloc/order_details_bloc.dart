import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/data/model/address/address_model.dart';
import 'package:electronics_store/data/model/cart/cart_model.dart';
import 'package:electronics_store/data/model/order/order_model.dart';
import 'package:electronics_store/features/orders/data/orders_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'order_details_event.dart';
part 'order_details_state.dart';
part 'order_details_bloc.freezed.dart';

class OrderDetailsBloc extends Bloc<OrderDetailsEvent, OrderDetailsState> {
  final AppService appService;
  final OrdersData ordersData;
  OrderDetailsBloc({required this.appService, required this.ordersData})
    : super(OrderDetailsState()) {
    on<_Started>(_onStarted);

    on<_LoadOrderDetails>(_onLoadOrderDetails);

    on<_GetCurrentPositionApp>(_onGetCurrentPositionApp);
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<OrderDetailsState> emit,
  ) async {
    final String lang = appService.sharedPreferences.getString("lang") ?? "en";
    emit(state.copyWith(lang: lang, status: _Loading()));
    add(_LoadOrderDetails(orderModel: event.orderModel));
  }

  Future<void> _onLoadOrderDetails(
    _LoadOrderDetails event,
    Emitter<OrderDetailsState> emit,
  ) async {
    var response = await ordersData.getOrderDetails(event.orderModel.id!);

    response.fold(
      (failure) =>
          emit(state.copyWith(status: _ServerFailure(failure.message))),
      (data) {
        final List<CartModel> cartItems = data['cartItems'];
        final AddressModel addressModel = data['address'];
        final OrderModel orderModel = data['order_info'];
        emit(
          state.copyWith(
            cartItems: cartItems,
            addressModel: addressModel,
            order: orderModel,
            status: _Loaded(),
          ),
        );
      },
    );
  }

  Future<void> _onGetCurrentPositionApp(
    _GetCurrentPositionApp event,
    Emitter<OrderDetailsState> emit,
  ) async {
    emit(state.copyWith(locationStatus: _LocationLoading()));

    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      emit(
        state.copyWith(
          locationStatus: _LocationServerFailure('الرجاء تشغيل إعدادات الموقع'),
        ),
      );
      return;
    }

    // فحص أذونات الوصول للموقع
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        emit(
          state.copyWith(
            locationStatus: _LocationServerFailure('تم رفض الوصول للموقع'),
          ),
        );
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      emit(
        state.copyWith(
          locationStatus: _LocationServerFailure(
            'صلاحيات الموقع مرفوضة بشكل دائم',
          ),
        ),
      );
      return;
    }

    Position position = await Geolocator.getCurrentPosition();

    emit(state.copyWith(position: position, locationStatus: _LocationLoaded()));
  }
}
