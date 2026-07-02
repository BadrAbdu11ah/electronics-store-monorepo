import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/data/model/category/category_model.dart';
import 'package:electronics_store/data/model/item/item_model.dart';
import 'package:electronics_store/features/favorite/data/favorite_data.dart';
import 'package:electronics_store/features/items_feature/data/item_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'items_event.dart';
part 'items_state.dart';
part 'items_bloc.freezed.dart';

class ItemsBloc extends Bloc<ItemsEvent, ItemsState> {
  final AppService appService;
  final ItemData itemsData;
  final FavoriteData favoriteData;

  ItemsBloc({
    required this.itemsData,
    required this.favoriteData,
    required this.appService,
  }) : super(const ItemsState()) {
    on<_Started>(_onStarted);
    on<_LoadItems>(_onLoadItems);
    on<_AddFavorite>(_onAddFavorite);
    on<_RemoveFavorite>(_onRemoveFavorite);
  }

  Future<void> _onStarted(_Started event, Emitter<ItemsState> emit) async {
    final String lang = appService.sharedPreferences.getString("lang") ?? "en";

    emit(
      state.copyWith(
        lang: lang,
        status: const ItemsStatus.initial(),
        categories: event.categories,
        categoryId: event.categoryId,
      ),
    );

    add(ItemsEvent.loadItems(categoryId: event.categoryId));
  }

  Future<void> _onLoadItems(_LoadItems event, Emitter<ItemsState> emit) async {
    emit(
      state.copyWith(
        status: const ItemsStatus.loading(),
        items: [],
        categoryId: event.categoryId,
      ),
    );

    final Map<int, bool> favoriteMap = {};

    var response = await itemsData.getItems(state.categoryId);

    response.fold(
      (failure) {
        emit(
          state.copyWith(
            status: ItemsStatus.serverFailure(failure.message),
            items: [],
          ),
        );
      },
      (itemsList) {
        for (var item in itemsList) {
          if (item.id != null) {
            favoriteMap[item.id!] = item.isFavorite ?? false;
          }
        }

        emit(
          state.copyWith(
            status: const ItemsStatus.loaded(),
            items: itemsList,
            isFavorite: favoriteMap,
          ),
        );
      },
    );
  }

  Future<void> _onAddFavorite(
    _AddFavorite event,
    Emitter<ItemsState> emit,
  ) async {
    emit(
      state.copyWith(isFavorite: {...state.isFavorite, event.itemsId: true}),
    );

    var response = await favoriteData.addFavorite(event.itemsId);

    response.fold(
      (failure) {
        emit(
          state.copyWith(
            favoriteStatus: FavoriteStatus.failure(failure.message),
            isFavorite: {...state.isFavorite, event.itemsId: false},
          ),
        );
      },
      (message) {
        emit(state.copyWith(favoriteStatus: FavoriteStatus.success(message)));
      },
    );
  }

  Future<void> _onRemoveFavorite(
    _RemoveFavorite event,
    Emitter<ItemsState> emit,
  ) async {
    emit(
      state.copyWith(isFavorite: {...state.isFavorite, event.itemsId: false}),
    );

    var response = await favoriteData.removeFavorite(event.itemsId);

    response.fold(
      (failure) {
        emit(
          state.copyWith(
            favoriteStatus: FavoriteStatus.failure(failure.message),
            isFavorite: {...state.isFavorite, event.itemsId: true},
          ),
        );
      },
      (message) {
        emit(state.copyWith(favoriteStatus: FavoriteStatus.success(message)));
      },
    );
  }
}
