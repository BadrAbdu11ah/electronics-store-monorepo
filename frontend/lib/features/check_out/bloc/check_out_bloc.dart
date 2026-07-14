import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/data/model/address/address_model.dart';
import 'package:electronics_store/features/address/data/address_data.dart';
import 'package:electronics_store/features/check_out/data/checkout_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_out_event.dart';
part 'check_out_state.dart';
part 'check_out_bloc.freezed.dart';

class CheckOutBloc extends Bloc<CheckOutEvent, CheckOutState> {
  final AddressData addressData;
  final CheckoutData checkoutData;
  CheckOutBloc({required this.addressData, required this.checkoutData})
    : super(CheckOutState()) {
    on<_Started>(_onStarted);
    on<_LoadAddresses>(_onLoadAddresses);
    on<_ChoosePymentMethod>(_onChoosePymentMethod);
    on<_ChooseDeliveryType>(_onChooseDeliveryType);
    on<_ChooseShippingAddress>(_onChooseShippingAddress);
    on<_Checkout>(_onCheckout);
    on<_ResetStatusToLoaded>(
      (event, emit) => emit(state.copyWith(status: _Loaded())),
    );
  }

  Future<void> _onStarted(_Started event, Emitter<CheckOutState> emit) async {
    add(_LoadAddresses());
  }

  Future<void> _onLoadAddresses(
    _LoadAddresses event,
    Emitter<CheckOutState> emit,
  ) async {
    emit(state.copyWith(addressStatus: _AddressLoading()));

    var response = await addressData.getAddresses();

    response.fold(
      (failure) {
        if (failure is EmptyDataFailure) {
          return emit(
            state.copyWith(
              status: _Loaded(),
              addressStatus: _AddressNoData(failure.message),
            ),
          );
        }
        emit(state.copyWith(status: _ServerFailure(failure.message)));
      },
      (addresses) => emit(
        state.copyWith(
          status: _Loaded(),
          addressStatus: _AddressLoaded(),
          addresses: addresses,
        ),
      ),
    );
  }

  Future<void> _onChoosePymentMethod(
    _ChoosePymentMethod event,
    Emitter<CheckOutState> emit,
  ) async {
    emit(state.copyWith(paymentMethod: event.val));
  }

  Future<void> _onChooseDeliveryType(
    _ChooseDeliveryType event,
    Emitter<CheckOutState> emit,
  ) async {
    emit(state.copyWith(deliveryType: event.val));
  }

  Future<void> _onChooseShippingAddress(
    _ChooseShippingAddress event,
    Emitter<CheckOutState> emit,
  ) async {
    emit(state.copyWith(addressID: event.val));
  }

  Future<void> _onCheckout(_Checkout event, Emitter<CheckOutState> emit) async {
    // التحقق من المدخلات (Validation)
    if (state.paymentMethod == null) {
      return emit(state.copyWith(status: _Failure("يرجى اختيار طريقة الدفع")));
    }
    if (state.deliveryType == null) {
      return emit(state.copyWith(status: _Failure("يرجى اختيار نوع الاستلام")));
    }
    if (state.deliveryType == "0" && state.addressID == null) {
      return emit(
        state.copyWith(status: _Failure("يرجى اختيار عنوان التوصيل")),
      );
    }

    emit(state.copyWith(status: _Loading()));

    var response = await checkoutData.checkout({
      'addressesid': state.addressID ?? "0",
      'type': state.deliveryType,
      'pricedelivery': "20",
      'price': event.priceOrders,
      'couponsid': event.couponsID,
      'paymentmethod': state.paymentMethod,
    });

    response.fold(
      (failure) {
        emit(state.copyWith(status: _ServerFailure(failure.message)));
      },
      (data) {
        // حالة فشل الكوبون
        if (data['status'] == "failure" &&
            data['message'] == "الكوبون لم يعد صالحاً") {
          return emit(state.copyWith(status: _CouponeFailure(data['message'])));
        }

        // حالة النجاح الكامل
        emit(state.copyWith(status: _Success(data['message'])));
      },
    );
  }
}
