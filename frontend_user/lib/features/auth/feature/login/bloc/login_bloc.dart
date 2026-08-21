import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:electronics_store/features/auth/data/auth_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthData authData;

  LoginBloc(this.authData) : super(LoginState.initial()) {
    on<_Submitted>(
      (event, emit) => _onSubmitted(event.email, event.password, emit),
    );
    on<_ResendCode>((event, emit) => _onResendCode(event.email, emit));
    on<_Reset>((event, emit) => emit(LoginState.initial()));
  }

  Future<void> _onSubmitted(
    String email,
    String password,
    Emitter<LoginState> emit,
  ) async {
    // // 1. تحديث الحالة إلى "جاري التحميل"
    emit(LoginState.loading());

    // // 2. طلب البيانات من السيرفر
    final response = await authData.login(email, password);

    // // 3. معالجة النتيجة
    await response.fold(
      (failure) async {
        emit(LoginState.failure(failure.message));
      },
      (data) async {
        // // فحص الحالات الاستثنائية
        if (data['errorKey'] == "accountNotActive") {
          emit(LoginState.accountNotActive());
          return;
        }

        if (data["status"] == "failure") {
          emit(LoginState.failure(data["errorKey"].toString()));
          return;
        }

        // // التأكد من أن الـ Handler لم يغلق قبل الـ emit
        if (!emit.isDone) {
          emit(LoginState.success());
        }
      },
    );
  }

  Future<void> _onResendCode(String email, Emitter<LoginState> emit) async {
    // // 1. تحديث الحالة إلى "جاري التحميل"
    emit(LoginState.loading());

    // // 2. طلب البيانات من السيرفر
    final response = await authData.resetVerifyCode(email);

    // // 3. معالجة نتيجة إعادة إرسال الكود
    response.fold(
      (failure) => emit(LoginState.serverFailure(failure.message)),
      (data) {
        if (data['status'] == 'failure') {
          emit(LoginState.failure(data['errorKey']));
          return;
        }

        emit(LoginState.successResendCode());
      },
    );
  }
}
