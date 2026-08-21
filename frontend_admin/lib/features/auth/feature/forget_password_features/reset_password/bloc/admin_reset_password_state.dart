part of 'admin_reset_password_bloc.dart';

@freezed
class AdminResetPasswordState with _$AdminResetPasswordState {
  const factory AdminResetPasswordState.initial() = _Initial;
  const factory AdminResetPasswordState.loading() = _Loading;
  const factory AdminResetPasswordState.success() = _Success;
  const factory AdminResetPasswordState.serverFailure(String errorMessage) =
      _ServerFailure;
  const factory AdminResetPasswordState.failure(String errorKey) = _Failure;
}
