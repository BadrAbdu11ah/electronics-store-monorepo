part of 'address_edit_bloc.dart';

@freezed
abstract class AddressEditState with _$AddressEditState {
  const factory AddressEditState.initial() = _Initial;
  const factory AddressEditState.loading() = _Loading;
  const factory AddressEditState.success(String message) = _Success;
  const factory AddressEditState.serverFilure(String message) = _ServerFailure;
}
