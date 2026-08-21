part of 'admin_verfiy_code_bloc.dart';

@freezed
class AdminVerfiyCodeState with _$AdminVerfiyCodeState {
  const factory AdminVerfiyCodeState.initial() = _Initial;
  const factory AdminVerfiyCodeState.loading() = _Loading;
  const factory AdminVerfiyCodeState.success() = _Success;
  const factory AdminVerfiyCodeState.serverFailure(String errorMessage) =
      _ServerFailure;
  const factory AdminVerfiyCodeState.failure(String errorKey) = _Failure;
}
