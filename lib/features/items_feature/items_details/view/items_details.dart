import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/model/items_model.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/items_feature/items_details/bloc/items_details_bloc.dart';
import 'package:electronics_store/features/items_feature/items_details/components/custom_bottom_item.dart';
import 'package:electronics_store/features/items_feature/items_details/widgets/items_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemsDetails extends StatelessWidget {
  final ItemsModel itemsModel;
  const ItemsDetails({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BlocBuilder<ItemsDetailsBloc, ItemsDetailsState>(
        builder: (context, state) {
          return state.status.maybeWhen(
            loading: () => AppLoadingWidget(),
            loaded: () => CustomBottomItem(
              titleAdd: AppTranslations.translate(
                context,
                AppText.textButtonAddInCart,
              ),
              onAdd: () {
                context.read<ItemsDetailsBloc>().add(
                  ItemsDetailsEvent.addCart(itemsModel.itemsId!),
                );
                // controller.addCart();
              },
              titleGoToCart: AppTranslations.translate(
                context,
                AppText.textGoToCartPage,
              ),
              onGoToCart: () {
                Navigator.pushNamed(context, AppRoute.cart);
              },
            ),
            orElse: () => SizedBox.shrink(),
          );
        },
      ),

      body: BlocConsumer<ItemsDetailsBloc, ItemsDetailsState>(
        listenWhen: (previous, current) =>
            previous.cartStatus != current.cartStatus,
        listener: (context, state) {
          state.cartStatus.whenOrNull(
            failure: (errorMessage) =>
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(errorMessage),
                    backgroundColor: Colors.red,
                  ),
                ),
            success: (message) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message), backgroundColor: Colors.green),
            ),
          );
        },
        buildWhen: (previous, current) => current.status.maybeWhen(
          loading: () => true,
          serverFailure: (_) => true,
          loaded: () => true,
          orElse: () => false,
        ),
        builder: (context, state) {
          return state.status.when(
            initial: () => SizedBox.shrink(),
            loading: () => AppLoadingWidget(),
            serverFailure: (errorMessage) => AppErrorWidget(
              message: errorMessage,
              onRetry: () => context.read<ItemsDetailsBloc>().add(
                ItemsDetailsEvent.started(itemsModel),
              ),
            ),
            loaded: () => ItemsDetailsView(state: state),
          );
        },
      ),
    );
  }
}
