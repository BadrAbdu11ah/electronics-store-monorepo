import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_admin/core/shared/handling_data_view.dart';
import 'package:frontend_admin/features/categories/crud/add/bloc/add_category_bloc.dart';
import 'package:frontend_admin/features/categories/crud/add/widgets/add_category_form.dart';

class AddCategoryPage extends StatelessWidget {
  const AddCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("إضافة قسم")),
      body: BlocConsumer<AddCategoryBloc, AddCategoryState>(
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
              orElse: () => false,
            ),
        builder: (context, state) {
          return state.status.maybeWhen(
            loading: () => AppLoadingWidget(),
            serverFailure: (message) => AppErrorWidget(message: message),
            orElse: () => AddCategoryForm(state: state),
          );
        },
      ),
    );
  }
}
