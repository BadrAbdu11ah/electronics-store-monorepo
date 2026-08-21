import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_admin/core/constant/app_route.dart';
import 'package:frontend_admin/features/items/crud/view/bloc/view_items_bloc.dart';
import 'package:frontend_admin/features/items/crud/view/widgets/items_list.dart';
import 'package:frontend_admin/handling_data_view.dart';

class ViewItemsPage extends StatelessWidget {
  const ViewItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("المنتجات")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoute.addItem);
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: BlocConsumer<ViewItemsBloc, ViewItemsState>(
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
              onRetry: () => context.read<ViewItemsBloc>().add(
                ViewItemsEvent.fetchitems(),
              ),
            ),
            loaded: (items) => ItemsList(items: items),
            empty: (message) => AppEmptyWidget(
              text: message,
              onTap: () => Navigator.pushNamed(context, AppRoute.addItem),
            ),
          );
        },
      ),
    );
  }
}
