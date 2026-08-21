import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_admin/features/categories/data/categories_data.dart';

part 'edit_category_state.dart';
part 'edit_category_event.dart';
part 'edit_category_bloc.freezed.dart';

class EditCategoryBloc extends Bloc<EditCategoryEvent, EditCategoryState> {
  final CategoriesData categoriesData;
  EditCategoryBloc(this.categoriesData) : super(EditCategoryState()) {
    on<_Submit>(_onSubmit);
    on<_SetImege>(_onSetImage);
  }

  Future<void> _onSubmit(_Submit event, Emitter<EditCategoryState> emit) async {
    emit(state.copyWith(snackBarStatus: SnackBarStatus.initial()));
    if (event.name.isEmpty ||
        event.nameAr.isEmpty ||
        event.description.isEmpty) {
      return emit(
        state.copyWith(
          snackBarStatus: SnackBarStatus.failure("البيانات غير صالحة"),
        ),
      );
    }
    emit(
      state.copyWith(
        status: _Loading(),
        snackBarStatus: SnackBarStatus.initial(),
      ),
    );

    var response = await categoriesData.editCategory(
      event.id,
      name: event.name,
      nameAr: event.nameAr,
      description: event.description,
      image: state.image,
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

  Future<void> _onSetImage(
    _SetImege event,
    Emitter<EditCategoryState> emit,
  ) async {
    emit(
      state.copyWith(
        image: event.file,
        snackBarStatus: SnackBarStatus.initial(),
      ),
    );
  }
}
