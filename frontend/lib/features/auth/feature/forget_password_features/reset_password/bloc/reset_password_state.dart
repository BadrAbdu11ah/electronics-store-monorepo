part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState.initial() = _Initial;
  const factory ResetPasswordState.loading() = _Loading;
  const factory ResetPasswordState.success() = _Success;
  const factory ResetPasswordState.serverFailure(String errorMessage) =
      _ServerFailure;
  const factory ResetPasswordState.failure(String errorKey) = _Failure;
}
