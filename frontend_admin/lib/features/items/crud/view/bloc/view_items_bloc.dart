import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_admin/core/class/failure.dart';
import 'package:frontend_admin/data/model/item/item_model.dart';
import 'package:frontend_admin/features/items/data/items_data.dart';

part 'view_items_state.dart';
part 'view_items_event.dart';
part 'view_items_bloc.freezed.dart';

class ViewItemsBloc extends Bloc<ViewItemsEvent, ViewItemsState> {
  final ItemsData itemsData;
  StreamSubscription<void>? categorySubscription;

  ViewItemsBloc(this.itemsData) : super(ViewItemsState()) {
    categorySubscription = itemsData.refreshView.listen((event) {
      if (!isClosed) {
        add(_Fetchitems());
      }
    });
    on<_Fetchitems>(_onFetchItems);
    on<_Deleteitem>(_onDeleteitem);
  }

  Future<void> _onFetchItems(
    _Fetchitems event,
    Emitter<ViewItemsState> emit,
  ) async {
    emit(
      state.copyWith(
        status: ViewItemsStatus.loading(),
        snackBarStatus: SnackBarStatus.initial(),
      ),
    );

    var response = await itemsData.getItems();

    response.fold(
      (failure) {
        if (failure is EmptyDataFailure) {
          emit(state.copyWith(status: ViewItemsStatus.empty(failure.message)));
        } else {
          emit(
            state.copyWith(
              status: ViewItemsStatus.serverFailure(failure.message),
            ),
          );
        }
      },
      (items) {
        emit(state.copyWith(status: ViewItemsStatus.loaded(items: items)));
      },
    );
  }

  Future<void> _onDeleteitem(
    _Deleteitem event,
    Emitter<ViewItemsState> emit,
  ) async {
    if (state.status is _Loaded) {
      final currentState = state.status as _Loaded;

      final updatedItems = currentState.items
          .where((item) => item.id != event.itemId)
          .toList();

      emit(state.copyWith(status: _Loaded(items: updatedItems)));

      var response = await itemsData.removeItem(event.itemId);

      response.fold(
        (failure) {
          emit(state.copyWith(status: _ServerFailure(failure.message)));
        },
        (message) {
          emit(state.copyWith(snackBarStatus: _SnackBarShow(message)));
        },
      );
    }
  }

  @override
  Future<void> close() {
    categorySubscription?.cancel();
    return super.close();
  }
}
