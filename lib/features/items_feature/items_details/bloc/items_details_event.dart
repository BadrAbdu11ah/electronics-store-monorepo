part of 'items_details_bloc.dart';

@freezed
class ItemsDetailsEvent with _$ItemsDetailsEvent {
  const factory ItemsDetailsEvent.started(ItemsModel itemsModel) = _Started;
  const factory ItemsDetailsEvent.loadCountCart(int itemsId) = _LoadCountCart;
  const factory ItemsDetailsEvent.addCart(int itemsId) = _AddCart;
  const factory ItemsDetailsEvent.removeCart(int itemsId) = _RemoveCart;
  const factory ItemsDetailsEvent.selectedColor(int index) = _SelelctedColor;
}
