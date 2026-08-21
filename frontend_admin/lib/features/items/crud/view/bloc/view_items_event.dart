part of 'view_items_bloc.dart';

@freezed
abstract class ViewItemsEvent with _$ViewItemsEvent {
  const factory ViewItemsEvent.fetchitems() = _Fetchitems;
  const factory ViewItemsEvent.deleteitem(int itemId) = _Deleteitem;
}
