part of 'forget_password_bloc.dart';

@freezed
class ForgetPasswordState with _$ForgetPasswordState {
  const factory ForgetPasswordState.initial() = _Initial;
  const factory ForgetPasswordState.loading() = _Loading;
  const factory ForgetPasswordState.success() = _Success;
  const factory ForgetPasswordState.failure(String errorKey) = _Failure;
  const factory ForgetPasswordState.serverFailure(String errorMessage) =
      _ServerFailure;
}
