part of 'verfiy_code_sign_up_bloc.dart';

@freezed
class VerfiyCodeSignUpState with _$VerfiyCodeSignUpState {
  const factory VerfiyCodeSignUpState.initial() = _Initial;
  const factory VerfiyCodeSignUpState.loading() = _Loading;
  const factory VerfiyCodeSignUpState.success() = _Success;
  const factory VerfiyCodeSignUpState.serverFailure(String errorMessage) =
      _ServerFailure;
  const factory VerfiyCodeSignUpState.failure(String errorKey) = _Failure;
}
