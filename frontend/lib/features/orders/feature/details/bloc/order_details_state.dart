part of 'order_details_bloc.dart';

@freezed
abstract class OrderDetailsState with _$OrderDetailsState {
  const factory OrderDetailsState.initial() = _Initial;
  const factory OrderDetailsState.loading() = _Loading;
  const factory OrderDetailsState.loaded({
    required OrderDetailsModel orderDetailsModel,
    @Default("en") String lang,
  }) = _Loaded;
  const factory OrderDetailsState.serverFailure(String message) =
      _ServerFailure;
}
