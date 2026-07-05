import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/items_feature/items/bloc/items_bloc.dart';
import 'package:electronics_store/features/items_feature/items/components/list_categories_items.dart';
import 'package:electronics_store/features/items_feature/items/components/custom_card_items.dart';
import 'package:electronics_store/features/search/bloc/search_bloc.dart';
import 'package:electronics_store/features/search/widgets/custom_search_delegate.dart';
import 'package:electronics_store/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemsGrid extends StatelessWidget {
  final ItemsState state;
  const ItemsGrid({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          CustomAppBar(
            title: AppTranslations.translate(context, AppText.findProduct),
            onOrder: () => Navigator.pushNamed(context, AppRoute.ordersPending),
            onFavorite: () => Navigator.pushNamed(context, AppRoute.favorite),
            onSearch: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(
                  searchBloc: context.read<SearchBloc>(),
                ),
              );
            },
          ),
          ListCategoriesItems(
            categories: state.categories,
            categoryId: state.categoryId,
          ),
          state.status.maybeWhen(
            loading: () => AppLoadingWidget(),
            orElse: () => GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                // عدد الأعمدة في الصف الواحد
                crossAxisCount: 2,
                // نسبة العرض إلى الارتفاع لكل عنصر
                childAspectRatio: 0.7,
              ),
              itemCount: state.items.length,
              itemBuilder: (BuildContext context, int i) {
                return CustomCardItems(state.items[i], lang: state.lang!);
              },
            ),
          ),
        ],
      ),
    );
  }
}
