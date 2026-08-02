import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/data/model/item/item_model.dart';
import 'package:electronics_store/features/favorite/data/favorite_data.dart';
import 'package:electronics_store/features/home/data/home_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'offers_event.dart';
part 'offers_state.dart';
part 'offers_bloc.freezed.dart';

class OffersBloc extends Bloc<OffersEvent, OffersState> {
  final HomeData homeData;
  final AppService appService;
  final FavoriteData favoriteData;
  OffersBloc({
    required this.homeData,
    required this.appService,
    required this.favoriteData,
  }) : super(const OffersState()) {
    on<_LoadOffers>(_onLoadOffers);
    on<_AddFavorite>(_onAddFavorite);
    on<_RemoveFavorite>(_onRemoveFavorite);
  }

  Future<void> _onLoadOffers(
    _LoadOffers event,
    Emitter<OffersState> emit,
  ) async {
    final String lang = appService.sharedPreferences.getString("lang") ?? "en";
    emit(state.copyWith(status: OffersStatus.loading()));
    final Map<int, bool> favoriteMap = {};

    final result = await homeData.getOffers();
    result.fold(
      (failure) {
        if (failure is EmptyDataFailure) {
          return emit(
            state.copyWith(status: OffersStatus.empty(failure.message)),
          );
        }
        return emit(
          state.copyWith(status: OffersStatus.serverFailure(failure.message)),
        );
      },
      (items) {
        for (ItemModel item in items) {
          if (item.id != null) {
            favoriteMap[item.id!] = item.isFavorite ?? false;
          }
        }
        return emit(
          state.copyWith(
            status: OffersStatus.loaded(items: items, lang: lang),
            isFavorite: favoriteMap,
          ),
        );
      },
    );
  }

  Future<void> _onAddFavorite(
    _AddFavorite event,
    Emitter<OffersState> emit,
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
    Emitter<OffersState> emit,
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
