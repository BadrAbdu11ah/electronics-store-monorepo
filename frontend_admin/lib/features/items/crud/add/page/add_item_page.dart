import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_admin/core/shared/handling_data_view.dart';
import 'package:frontend_admin/features/items/crud/add/bloc/add_item_bloc.dart';
import 'package:frontend_admin/features/items/crud/add/widgets/add_item_form.dart';

class AddItemPage extends StatelessWidget {
  const AddItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("إضافة منتج")),
      body: BlocConsumer<AddItemBloc, AddItemState>(
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

        builder: (context, state) {
          final isLoading = state.status.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );
          return state.status.maybeWhen(
            serverFailure: (message) => AppErrorWidget(
              message: message,
              onRetry: () =>
                  context.read<AddItemBloc>()..add(AddItemEvent.started()),
            ),
            orElse: () => AddItemForm(state: state, isLoading: isLoading),
          );
        },
      ),
    );
  }
}
