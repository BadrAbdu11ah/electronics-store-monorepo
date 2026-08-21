import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_admin/data/model/category/category_model.dart';
import 'package:frontend_admin/features/categories/data/categories_data.dart';
import 'package:frontend_admin/features/items/data/items_data.dart';

part 'add_item_state.dart';
part 'add_item_event.dart';
part 'add_item_bloc.freezed.dart';

class AddItemBloc extends Bloc<AddItemEvent, AddItemState> {
  final ItemsData itemsData;
  final CategoriesData categoriesData;
  AddItemBloc({required this.itemsData, required this.categoriesData})
    : super(AddItemState()) {
    on<_Started>(_onStarted);
    on<_LoadCategories>(_onLoadCategories);
    on<_Submit>(_onSubmit);
    on<_SetImege>(_onSetImage);
    on<_SetCategory>(_onSetCategoryId);
  }

  Future<void> _onStarted(_Started event, Emitter<AddItemState> emit) async {
    emit(
      state.copyWith(
        status: AddItemStatus.initial(),
        snackBarStatus: SnackBarStatus.initial(),
        categoriesStatus: CategoriesStatus.initial(),
        image: null,
      ),
    );

    add(_LoadCategories());
  }

  Future<void> _onLoadCategories(
    _LoadCategories event,
    Emitter<AddItemState> emit,
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

  Future<void> _onSubmit(_Submit event, Emitter<AddItemState> emit) async {
    emit(state.copyWith(snackBarStatus: SnackBarStatus.initial()));
    if (state.image == null) {
      return emit(
        state.copyWith(
          snackBarStatus: SnackBarStatus.failure("الرجاء اختيار صورة"),
        ),
      );
    }
    if (state.category == null) {
      return emit(
        state.copyWith(
          snackBarStatus: SnackBarStatus.failure("الرجاء اختيار القسم"),
        ),
      );
    }
    emit(state.copyWith(status: _Loading()));

    var response = await itemsData.addItem(
      name: event.name,
      nameAr: event.nameAr,
      description: event.description,
      descriptionAr: event.descriptionAr,
      count: event.count,
      active: event.active,
      price: event.price,
      discount: event.discount,
      deliveryTime: event.deliveryTime,
      categoryId: state.category!.id!,
      image: state.image,
    );

    response.fold(
      (failure) =>
          emit(state.copyWith(status: _ServerFailure(failure.message))),
      (message) =>
          emit(state.copyWith(snackBarStatus: SnackBarStatus.success(message))),
    );
  }

  Future<void> _onSetImage(_SetImege event, Emitter<AddItemState> emit) async {
    emit(state.copyWith(image: event.file));
  }

  Future<void> _onSetCategoryId(
    _SetCategory event,
    Emitter<AddItemState> emit,
  ) async {
    emit(state.copyWith(category: event.category));
  }
}
