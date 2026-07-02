part of 'items_details_bloc.dart';

@freezed
abstract class ItemsDetailsEvent with _$ItemsDetailsEvent {
  const factory ItemsDetailsEvent.started(ItemModel itemModel) = _Started;
  const factory ItemsDetailsEvent.loadCountCart(int itemsId) = _LoadCountCart;
  const factory ItemsDetailsEvent.addCart(int itemsId) = _AddCart;
  const factory ItemsDetailsEvent.removeCart(int itemsId) = _RemoveCart;
  const factory ItemsDetailsEvent.selectedColor(int index) = _SelelctedColor;
}
