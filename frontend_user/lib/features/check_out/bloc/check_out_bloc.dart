// متحكم إدارة حالة عملية الدفع
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/app_service.dart';
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
  final AppService appService;
  CheckOutBloc({
    required this.addressData,
    required this.checkoutData,
    required this.appService,
  }) : super(CheckOutState()) {
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
    // 1. جلب اللغة المحفوظة
    final String lang = appService.sharedPreferences.getString("lang") ?? "en";
    // 2. تعيين البيانات الأولية
    emit(
      state.copyWith(
        lang: lang,
        status: _Initial(),
        subtotalPrice: event.subtotalPrice,
        totalAppPrice: event.totalAppPrice,
        discountPercentage: event.discountPercentage,
        shippingPrice: event.shippingPrice,
        deliveryType: "0",
      ),
    );
    // 3. تحميل العناوين
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
        emit(
          state.copyWith(
            status: _ServerFailure(failure.message),
            addressStatus: _AddressInitial(),
          ),
        );
      },
      (addresses) => emit(
        state.copyWith(
          status: _Loaded(),
          addressStatus: _AddressLoaded(),
          addresses: addresses,
          addressID: addresses.isNotEmpty ? addresses[0].id.toString() : null,
        ),
      ),
    );
  }

  Future<void> _onChoosePymentMethod(
    _ChoosePymentMethod event,
    Emitter<CheckOutState> emit,
  ) async {
    // تغيير طريقة الدفع
    emit(state.copyWith(paymentMethod: event.val));
  }

  Future<void> _onChooseDeliveryType(
    _ChooseDeliveryType event,
    Emitter<CheckOutState> emit,
  ) async {
    // 1. عدم تكرار المعالجة إذا التحديد هو نفسه
    if (state.deliveryType == event.val) return;

    // 2. حالة الاختيار: "1" تعني الاستلام من الفرع
    if (event.val == "1") {
      // حفظ تكلفة الشحن السابقة قبل تحويلها لـ 0 لاسترجاعها لاحقاً
      return emit(
        state.copyWith(
          deliveryType: event.val,
          totalAppPrice: state.totalAppPrice - state.shippingPrice,
          shippingPrice: 0,
        ),
      );
    }

    if (event.val == "0" && state.deliveryType == "1") {
      double restoredShipping = 10.0;

      return emit(
        state.copyWith(
          deliveryType: event.val,
          shippingPrice: restoredShipping,
          totalAppPrice: state.totalAppPrice + restoredShipping,
        ),
      );
    }

    // 4. في باقي الحالات العادية
    emit(state.copyWith(deliveryType: event.val));
  }

  Future<void> _onChooseShippingAddress(
    _ChooseShippingAddress event,
    Emitter<CheckOutState> emit,
  ) async {
    // اختيار عنوان الشحن
    emit(state.copyWith(addressID: event.val));
  }

  Future<void> _onCheckout(_Checkout event, Emitter<CheckOutState> emit) async {
    // التحقق من المدخلات
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

    // إرسال البيانات للخدمة
    var response = await checkoutData.checkout({
      'address_id': state.addressID,
      'type': state.deliveryType,
      'delivery_price': state.shippingPrice.toString(),
      'price': event.priceOrders,
      'coupon_id': event.couponsID,
      'payment_method': state.paymentMethod,
    });

    response.fold(
      (failure) {
        emit(state.copyWith(status: _ServerFailure(failure.message)));
      },
      (data) {
        if (data['status'] == "failure" &&
            data['message'] == "الكوبون لم يعد صالحاً") {
          return emit(state.copyWith(status: _CouponeFailure(data['message'])));
        }

        emit(state.copyWith(status: _Success(data['message'])));
      },
    );
  }
}
