import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/home/home_page/bloc/home_page_bloc.dart';
import 'package:electronics_store/features/home/home_page/components/custom_card_home.dart';
import 'package:electronics_store/features/home/home_page/components/custom_title_home.dart';
import 'package:electronics_store/features/home/home_page/components/list_categories_home.dart';
import 'package:electronics_store/features/home/home_page/components/list_items_home.dart';
import 'package:electronics_store/features/search/bloc/search_bloc.dart';
import 'package:electronics_store/features/search/widgets/custom_search_delegate.dart';
import 'package:electronics_store/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  final HomePageState state;

  const HomeView({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Stack(
        children: [
          ListView(
            children: [
              CustomAppBar(
                title: AppTranslations.translate(context, AppText.findProduct),
                onOrder: () =>
                    Navigator.pushNamed(context, AppRoute.ordersPending),
                onFavorite: () =>
                    Navigator.pushNamed(context, AppRoute.favorite),
                onSearch: () {
                  showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(
                      searchBloc: context.read<SearchBloc>(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 10),

              state.status.maybeWhen(
                loading: () => const AppLoadingWidget(),
                orElse: () => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomCardHome(
                      title: AppTranslations.translate(
                        context,
                        AppText.summerOffers,
                      ),
                      subtitle: AppTranslations.translate(
                        context,
                        AppText.discount20,
                      ),
                      lang: state.lang!,
                    ),
                    CustomTitleHome(
                      title: AppTranslations.translate(
                        context,
                        AppText.categories,
                      ),
                    ),
                    ListCategoriesHome(categories: state.categories),
                    if (state.items.isNotEmpty) ...[
                      CustomTitleHome(
                        title: AppTranslations.translate(
                          context,
                          AppText.productsForYou,
                        ),
                      ),
                      ListItemsHome(items: state.items, lang: state.lang!),
                      CustomTitleHome(
                        title: AppTranslations.translate(
                          context,
                          AppText.discount,
                        ),
                      ),
                      ListItemsHome(items: state.items, lang: state.lang!),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
