import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_admin/core/class/failure.dart';
import 'package:frontend_admin/data/model/category/category_model.dart';
import 'package:frontend_admin/features/categories/data/categories_data.dart';

part 'view_categories_state.dart';
part 'view_categories_event.dart';
part 'view_categories_bloc.freezed.dart';

class ViewCategoriesBloc
    extends Bloc<ViewCategoriesEvent, ViewCategoriesState> {
  final CategoriesData categoriesData;
  StreamSubscription<void>? categorySubscription;

  ViewCategoriesBloc(this.categoriesData) : super(ViewCategoriesState()) {
    categorySubscription = categoriesData.refreshView.listen((event) {
      if (!isClosed) {
        add(_FetchCategories());
      }
    });
    on<_FetchCategories>(_onFetchCategories);
    on<_DeleteCategory>(_onDeleteCategory);
  }

  Future<void> _onFetchCategories(
    _FetchCategories event,
    Emitter<ViewCategoriesState> emit,
  ) async {
    emit(
      state.copyWith(
        status: ViewCategoriesStatus.loading(),
        snackBarStatus: SnackBarStatus.initial(),
      ),
    );

    var response = await categoriesData.getCategories();

    response.fold(
      (failure) {
        if (failure is EmptyDataFailure) {
          emit(
            state.copyWith(status: ViewCategoriesStatus.empty(failure.message)),
          );
        } else {
          emit(
            state.copyWith(
              status: ViewCategoriesStatus.serverFailure(failure.message),
            ),
          );
        }
      },
      (categories) {
        emit(
          state.copyWith(
            status: ViewCategoriesStatus.loaded(categories: categories),
          ),
        );
      },
    );
  }

  Future<void> _onDeleteCategory(
    _DeleteCategory event,
    Emitter<ViewCategoriesState> emit,
  ) async {
    if (state.status is _Loaded) {
      final currentState = state.status as _Loaded;

      final updatedCategory = currentState.categories
          .where((category) => category.id != event.categoryId)
          .toList();

      emit(state.copyWith(status: _Loaded(categories: updatedCategory)));

      var response = await categoriesData.removeCategory(event.categoryId);

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
