import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/data/model/items_model.dart';
import 'package:electronics_store/features/cart/data/cart_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'items_details_event.dart';
part 'items_details_state.dart';
part 'items_details_bloc.freezed.dart';

class ItemsDetailsBloc extends Bloc<ItemsDetailsEvent, ItemsDetailsState> {
  final AppService appService;
  final CartData cartData;
  ItemsDetailsBloc({required this.appService, required this.cartData})
    : super(ItemsDetailsState()) {
    on<_Started>(_onStarted);
    on<_LoadCountCart>(_onLoadCountCart);
    on<_AddCart>(_onAddCart);
    on<_RemoveCart>(_onRemoveCart);
    on<_SelelctedColor>(_onSelectedColor);
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<ItemsDetailsState> emit,
  ) async {
    emit(
      state.copyWith(
        status: ItemsDetailsStatus.initial(),
        itemsModel: event.itemsModel,
      ),
    );

    add(_LoadCountCart(state.itemsModel!.itemsId!));
  }

  Future<void> _onLoadCountCart(
    _LoadCountCart event,
    Emitter<ItemsDetailsState> emit,
  ) async {
    emit(state.copyWith(status: ItemsDetailsStatus.loading()));
    var response = await cartData.getCountCart(event.itemsId);

    response.fold(
      (failure) {
        emit(
          state.copyWith(
            status: ItemsDetailsStatus.serverFailure(failure.message),
          ),
        );
      },
      (countResult) {
        emit(
          state.copyWith(
            status: ItemsDetailsStatus.loaded(),
            count: countResult,
          ),
        );
      },
    );
  }

  Future<void> _onAddCart(
    _AddCart event,
    Emitter<ItemsDetailsState> emit,
  ) async {
    if (state.isUpdating) return;
    emit(state.copyWith(count: state.count + 1, isUpdating: true));

    var response = await cartData.addCart(state.itemsModel!.itemsId!);

    response.fold(
      (failure) {
        emit(
          state.copyWith(
            count: state.count - 1,
            cartStatus: CartStatus.failure(failure.message),
            isUpdating: false,
          ),
        );
      },
      (message) {
        emit(
          state.copyWith(
            cartStatus: CartStatus.success(message),
            isUpdating: false,
          ),
        );
      },
    );
  }

  Future<void> _onRemoveCart(
    _RemoveCart event,
    Emitter<ItemsDetailsState> emit,
  ) async {
    if (state.count <= 0 || state.isUpdating) return;

    emit(state.copyWith(count: state.count - 1, isUpdating: true));

    var response = await cartData.removeCart(state.itemsModel!.itemsId!);

    response.fold(
      (failure) {
        emit(
          state.copyWith(
            count: state.count + 1,
            cartStatus: CartStatus.failure(failure.message),
            isUpdating: false,
          ),
        );
      },
      (message) {
        emit(
          state.copyWith(
            cartStatus: CartStatus.success(message),
            isUpdating: false,
          ),
        );
      },
    );
  }

  Future<void> _onSelectedColor(
    _SelelctedColor event,
    Emitter<ItemsDetailsState> emit,
  ) async {
    final updatedSubItems = List<Map<String, dynamic>>.from(
      state.subItems.map((item) => Map<String, dynamic>.from(item)),
    );

    final selectedColorName = updatedSubItems[event.index]['name'].toString();
    updatedSubItems[event.index]['active'] = true;

    emit(
      state.copyWith(
        subItems: updatedSubItems,
        selectedColors: [...state.selectedColors, selectedColorName],
      ),
    );
  }
}
