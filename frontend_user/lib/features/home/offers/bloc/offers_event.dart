part of 'offers_bloc.dart';

@freezed
abstract class OffersEvent with _$OffersEvent {
  const factory OffersEvent.loadOffers() = _LoadOffers;
  const factory OffersEvent.addFavorite(int itemsId) = _AddFavorite;
  const factory OffersEvent.removeFavorite(int itemsId) = _RemoveFavorite;
}
