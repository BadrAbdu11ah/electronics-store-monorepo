part of 'verfiy_code_password_bloc.dart';

@freezed
class VerfiyCodePasswordState with _$VerfiyCodePasswordState {
  const factory VerfiyCodePasswordState.initial() = _Initial;
  const factory VerfiyCodePasswordState.loading() = _Loading;
  const factory VerfiyCodePasswordState.success() = _Success;
  const factory VerfiyCodePasswordState.serverFailure(String errorMessage) =
      _ServerFailure;
  const factory VerfiyCodePasswordState.failure(String errorKey) = _Failure;
}
