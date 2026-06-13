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
    emit(LoginState.loading());

    final response = await authData.login(email, password);

    response.fold((failure) => emit(LoginState.failure(failure.message)), (
      data,
    ) {
      // 1. فحص الحالات الاستثنائية
      if (data['errorKey'] == "accountNotActive") {
        emit(LoginState.accountNotActive());
        return; // الخروج المبكر
      }

      if (data["status"] == "failure") {
        emit(LoginState.failure(data["errorKey"].toString()));
        return; // الخروج المبكر
      }

      // 2. حالة النجاح
      emit(LoginState.success());
    });
  }

  Future<void> _onResendCode(String email, Emitter<LoginState> emit) async {
    emit(LoginState.loading());

    final response = await authData.resetVerifyCode(email);

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
