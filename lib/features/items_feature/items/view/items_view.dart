import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/model/category/category_model.dart';
import 'package:electronics_store/features/items_feature/items/bloc/items_bloc.dart';
import 'package:electronics_store/features/items_feature/items/widgets/items_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemsView extends StatelessWidget {
  final int categoryId;
  final List<CategoryModel> categories;
  const ItemsView({
    super.key,
    required this.categoryId,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ItemsBloc, ItemsState>(
        listenWhen: (previous, current) =>
            previous.favoriteStatus != current.favoriteStatus,
        listener: (context, state) {
          state.favoriteStatus.whenOrNull(
            success: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: Colors.green),
              );
            },
            failure: (errorMessage) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(errorMessage),
                  backgroundColor: Colors.red,
                ),
              );
            },
          );
        },
        buildWhen: (previous, current) => current.status.maybeWhen(
          initial: () => true,
          loading: () => true,
          loaded: () => true,
          serverFailure: (_) => true,
          orElse: () => false,
        ),
        builder: (context, state) {
          return state.status.maybeWhen(
            serverFailure: (err) => AppErrorWidget(
              message: err,
              onRetry: () => context.read<ItemsBloc>().add(
                ItemsEvent.started(
                  categoryId: categoryId,
                  categories: categories,
                ),
              ),
            ),
            orElse: () => ItemsGrid(state: state),
          );
        },
      ),
    );
  }
}
