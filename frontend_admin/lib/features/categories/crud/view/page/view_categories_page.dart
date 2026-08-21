import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_admin/core/constant/app_route.dart';
import 'package:frontend_admin/features/categories/crud/view/bloc/view_categories_bloc.dart';
import 'package:frontend_admin/features/categories/crud/view/widgets/categories_list.dart';
import 'package:frontend_admin/handling_data_view.dart';

class ViewCategoriesPage extends StatelessWidget {
  const ViewCategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("الأقسام")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoute.addCategory);
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: BlocConsumer<ViewCategoriesBloc, ViewCategoriesState>(
        listenWhen: (previous, current) =>
            previous.snackBarStatus != current.snackBarStatus,
        listener: (context, state) {
          state.snackBarStatus.whenOrNull(
            show: (message) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(message)));
            },
          );
        },
        builder: (context, state) {
          return state.status.when(
            initial: () => SizedBox.shrink(),
            loading: () => AppLoadingWidget(),
            serverFailure: (errorMessage) => AppErrorWidget(
              message: errorMessage,
              onRetry: () => context.read<ViewCategoriesBloc>().add(
                ViewCategoriesEvent.fetchCategories(),
              ),
            ),
            loaded: (categories) => CategoriesList(categories: categories),
            empty: (message) => AppEmptyWidget(
              text: message,
              onTap: () => Navigator.pushNamed(context, AppRoute.addCategory),
            ),
          );
        },
      ),
    );
  }
}
