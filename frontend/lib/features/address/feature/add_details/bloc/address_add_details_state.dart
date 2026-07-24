part of 'address_add_details_bloc.dart';

@freezed
abstract class AddressAddDetailsState with _$AddressAddDetailsState {
  const factory AddressAddDetailsState.initial() = _Initial;
  const factory AddressAddDetailsState.loading() = _Loading;
  const factory AddressAddDetailsState.success(String message) = _Success;
  const factory AddressAddDetailsState.serverFailure(String message) =
      _ServerFailure;
}
