import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_admin/core/shared/handling_data_view.dart';
import 'package:frontend_admin/data/model/item/item_model.dart';
import 'package:frontend_admin/features/items/crud/edit/bloc/edit_item_bloc.dart';
import 'package:frontend_admin/features/items/crud/edit/widgets/edit_item_form.dart';

class EditItemPage extends StatelessWidget {
  final ItemModel item;
  final int active;
  const EditItemPage({super.key, required this.item, required this.active});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("تعديل منتج")),
      body: BlocConsumer<EditItemBloc, EditItemState>(
        listenWhen: (previous, current) =>
            previous.snackBarStatus != current.snackBarStatus,
        listener: (context, state) {
          state.snackBarStatus.whenOrNull(
            success: (message) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(message)));

              Navigator.of(context).pop();
            },
            failure: (message) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(message)));
            },
          );
        },
        buildWhen: (previous, current) =>
            current.image != null ||
            current.status.maybeWhen(
              loading: () => true,
              serverFailure: (_) => true,
              initial: () => true,
              orElse: () => false,
            ),
        builder: (context, state) {
          final isLoading = state.status.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );
          return state.status.maybeWhen(
            serverFailure: (message) => AppErrorWidget(
              message: message,
              onRetry: () => context.read<EditItemBloc>().add(
                EditItemEvent.started(category: item.category!, active: active),
              ),
            ),
            orElse: () =>
                EditItemForm(state: state, item: item, isLoading: isLoading),
          );
        },
      ),
    );
  }
}
