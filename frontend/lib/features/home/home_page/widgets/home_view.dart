import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/data/model/category/category_model.dart';
import 'package:electronics_store/data/model/item/item_model.dart';
import 'package:electronics_store/data/model/setting/setting_model.dart';
import 'package:electronics_store/data/static/app_text.dart';
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
  final String lang;
  final List<CategoryModel> categories;
  final List<ItemModel> items;
  final SettingModel settings;

  const HomeView({
    super.key,
    required this.lang,
    required this.categories,
    required this.items,
    required this.settings,
  });

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

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomCardHome(
                    title: lang == 'en'
                        ? settings.titleHomeEn
                        : settings.titleHomeAr,
                    subtitle: lang == 'en'
                        ? settings.bodyHomeEn
                        : settings.bodyHomeAr,
                    lang: lang,
                  ),
                  CustomTitleHome(
                    title: AppTranslations.translate(
                      context,
                      AppText.categories,
                    ),
                  ),
                  ListCategoriesHome(categories: categories),
                  if (items.isNotEmpty) ...[
                    CustomTitleHome(
                      title: AppTranslations.translate(
                        context,
                        AppText.productsForYou,
                      ),
                    ),
                    ListItemsHome(items: items, lang: lang),
                    CustomTitleHome(
                      title: AppTranslations.translate(
                        context,
                        AppText.discount,
                      ),
                    ),
                    ListItemsHome(items: items, lang: lang),
                  ],
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
