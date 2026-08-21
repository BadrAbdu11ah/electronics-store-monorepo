import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_admin/data/model/category/category_model.dart';
import 'package:frontend_admin/features/categories/data/categories_data.dart';
import 'package:frontend_admin/features/items/data/items_data.dart';

part 'edit_item_state.dart';
part 'edit_item_event.dart';
part 'edit_item_bloc.freezed.dart';

class EditItemBloc extends Bloc<EditItemEvent, EditItemState> {
  final ItemsData itemsData;
  final CategoriesData categoriesData;
  EditItemBloc({required this.itemsData, required this.categoriesData})
    : super(EditItemState()) {
    on<_Started>(_onStarted);
    on<_LoadCategories>(_onLoadCategories);
    on<_SetImege>(_onSetImage);
    on<_SetCategory>(_onSetCategoryId);
    on<_SetActive>(_onSetActive);
    on<_Submit>(_onSubmit);
  }

  Future<void> _onStarted(_Started event, Emitter<EditItemState> emit) async {
    emit(
      state.copyWith(
        status: EditItemStatus.initial(),
        snackBarStatus: SnackBarStatus.initial(),
        categoriesStatus: CategoriesStatus.initial(),
        category: event.category,
        active: event.active,
      ),
    );

    await _onLoadCategories(const _LoadCategories(), emit);
  }

  Future<void> _onLoadCategories(
    _LoadCategories event,
    Emitter<EditItemState> emit,
  ) async {
    emit(state.copyWith(categoriesStatus: _CategoriesLoading()));
    var response = await categoriesData.getCategories();
    response.fold(
      (failure) =>
          emit(state.copyWith(status: _ServerFailure(failure.message))),
      (categories) =>
          emit(state.copyWith(categoriesStatus: _CategoriesLoaded(categories))),
    );
  }

  Future<void> _onSetImage(_SetImege event, Emitter<EditItemState> emit) async {
    emit(
      state.copyWith(
        image: event.file,
        snackBarStatus: SnackBarStatus.initial(),
      ),
    );
  }

  Future<void> _onSetCategoryId(
    _SetCategory event,
    Emitter<EditItemState> emit,
  ) async {
    emit(
      state.copyWith(
        category: event.category,
        snackBarStatus: SnackBarStatus.initial(),
      ),
    );
  }

  Future<void> _onSetActive(
    _SetActive event,
    Emitter<EditItemState> emit,
  ) async {
    emit(
      state.copyWith(
        active: event.active,
        snackBarStatus: SnackBarStatus.initial(),
      ),
    );
  }

  Future<void> _onSubmit(_Submit event, Emitter<EditItemState> emit) async {
    emit(state.copyWith(snackBarStatus: SnackBarStatus.initial()));
    emit(state.copyWith(status: _Loading()));

    var response = await itemsData.editItem(
      event.id,
      name: event.name,
      nameAr: event.nameAr,
      description: event.description,
      descriptionAr: event.descriptionAr,
      count: event.count,
      price: event.price,
      discount: event.discount,
      deliveryTime: event.deliveryTime,
      categoryId: state.category!.id!,
      image: state.image,
      active: state.active!,
    );

    response.fold(
      (failure) =>
          emit(state.copyWith(status: _ServerFailure(failure.message))),
      (message) => emit(
        state.copyWith(
          status: _Success(),
          snackBarStatus: SnackBarStatus.success(message),
        ),
      ),
    );
  }
}
