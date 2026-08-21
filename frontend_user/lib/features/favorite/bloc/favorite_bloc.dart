import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/data/model/item/item_model.dart';
import 'package:electronics_store/features/favorite/data/favorite_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';
part 'favorite_bloc.freezed.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  final AppService appService;
  final FavoriteData favoriteData;

  FavoriteBloc({required this.appService, required this.favoriteData})
    : super(FavoriteState()) {
    on<_Started>(_onStarted);
    on<_LoadFavoriteProducts>(_onLoadFavoriteProducts);
    on<_RemoveFavorite>(_onRemoveFavorite);
  }

  Future<void> _onStarted(_Started event, Emitter<FavoriteState> emit) async {
    final String lang = appService.sharedPreferences.getString("lang") ?? "en";
    emit(state.copyWith(lang: lang));
    add(const FavoriteEvent.loadFavoriteProducts());
  }

  Future<void> _onLoadFavoriteProducts(
    _LoadFavoriteProducts event,
    Emitter<FavoriteState> emit,
  ) async {
    emit(state.copyWith(status: const FavoriteStatus.loading()));

    var response = await favoriteData.viewFavorite();

    response.fold(
      (failure) {
        if (failure is EmptyDataFailure) {
          return emit(
            state.copyWith(status: FavoriteStatus.noData(failure.message)),
          );
        }
        emit(
          state.copyWith(status: FavoriteStatus.serverFailure(failure.message)),
        );
      },
      (favoriteItems) {
        emit(
          state.copyWith(
            status: const FavoriteStatus.loaded(),
            items: favoriteItems,
          ),
        );
      },
    );
  }

  Future<void> _onRemoveFavorite(
    _RemoveFavorite event,
    Emitter<FavoriteState> emit,
  ) async {
    final previousItems = state.items;

    // 1. حذف محلي سريع (Optimistic UI)
    final updatedItems = state.items
        .where((item) => item.id != event.itemId)
        .toList();
    emit(
      state.copyWith(
        items: updatedItems,
        removeStatus: const RemoveStatus.initial(),
      ),
    );

    // 2. إرسال الطلب للسيرفر
    var response = await favoriteData.removeFavorite(event.itemId);

    // 3. معالجة الرد
    response.fold(
      (failure) {
        emit(
          state.copyWith(
            items: previousItems, // استعادة المنتجات لأن الحذف فشل بالسيرفر
            removeStatus: RemoveStatus.failure(failure.message),
          ),
        );
      },
      (message) {
        emit(
          state.copyWith(
            items: updatedItems, // تأكيد الحذف محلياً
            removeStatus: RemoveStatus.success(message),
          ),
        );
      },
    );
  }
}
