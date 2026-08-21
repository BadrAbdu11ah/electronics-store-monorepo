import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:electronics_store_delivery/features/auth/data/delivery_auth_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_login_event.dart';
part 'delivery_login_state.dart';
part 'delivery_login_bloc.freezed.dart';

class DeliveryLoginBloc extends Bloc<DeliveryLoginEvent, DeliveryLoginState> {
  final DeliveryAuthData authData;

  DeliveryLoginBloc(this.authData) : super(DeliveryLoginState.initial()) {
    on<_Submitted>(
      (event, emit) => _onSubmitted(event.email, event.password, emit),
    );
    on<_Reset>((event, emit) => emit(DeliveryLoginState.initial()));
  }

  Future<void> _onSubmitted(
    String email,
    String password,
    Emitter<DeliveryLoginState> emit,
  ) async {
    // // 1. تحديث الحالة إلى "جاري التحميل"
    emit(DeliveryLoginState.loading());

    // // 2. طلب البيانات من السيرفر
    final response = await authData.login(email, password);

    // // 3. معالجة النتيجة
    await response.fold(
      (failure) async {
        emit(DeliveryLoginState.failure(failure.message));
      },
      (data) async {
        if (data["status"] == "failure") {
          emit(DeliveryLoginState.failure(data["errorKey"].toString()));
          return;
        }

        // // التأكد من أن الـ Handler لم يغلق قبل الـ emit
        if (!emit.isDone) {
          emit(DeliveryLoginState.success());
        }
      },
    );
  }
}
