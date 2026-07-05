part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.accountNotActive() = _AccountNotActive;
  const factory LoginState.successResendCode() = _SuccessResendCode;
  const factory LoginState.success() = _Success;
  const factory LoginState.serverFailure(String errorMessage) = _ServerFailure;
  const factory LoginState.failure(String errorMessage) = _Failure;
}
