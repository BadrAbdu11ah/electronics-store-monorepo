part of 'admin_forget_password_bloc.dart';

@freezed
class AdminForgetPasswordState with _$AdminForgetPasswordState {
  const factory AdminForgetPasswordState.initial() = _Initial;
  const factory AdminForgetPasswordState.loading() = _Loading;
  const factory AdminForgetPasswordState.success() = _Success;
  const factory AdminForgetPasswordState.failure(String errorKey) = _Failure;
  const factory AdminForgetPasswordState.serverFailure(String errorMessage) =
      _ServerFailure;
}
