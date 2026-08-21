part of 'admin_login_bloc.dart';

@freezed
class AdminLoginState with _$AdminLoginState {
  const factory AdminLoginState.initial() = _Initial;
  const factory AdminLoginState.loading() = _Loading;
  const factory AdminLoginState.success() = _Success;
  const factory AdminLoginState.serverFailure(String errorMessage) =
      _ServerFailure;
  const factory AdminLoginState.failure(String errorMessage) = _Failure;
}
