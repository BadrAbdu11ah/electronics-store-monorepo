import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_admin/core/shared/handling_data_view.dart';
import 'package:frontend_admin/data/model/category/category_model.dart';
import 'package:frontend_admin/features/categories/crud/edit/bloc/edit_category_bloc.dart';
import 'package:frontend_admin/features/categories/crud/edit/widgets/edit_category_form.dart';

class EditCategoryPage extends StatelessWidget {
  final CategoryModel category;
  const EditCategoryPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("تعديل القسم")),
      body: BlocConsumer<EditCategoryBloc, EditCategoryState>(
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
            orElse: () => EditCategoryForm(category: category, state: state),
          );
        },
      ),
    );
  }
}
