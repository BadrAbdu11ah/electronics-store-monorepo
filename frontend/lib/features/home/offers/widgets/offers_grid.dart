import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/data/model/item/item_model.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/home/offers/widgets/custom_card_items_offers.dart';
import 'package:electronics_store/features/search/bloc/search_bloc.dart';
import 'package:electronics_store/features/search/widgets/custom_search_delegate.dart';
import 'package:electronics_store/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OffersGrid extends StatelessWidget {
  final List<ItemModel> items;
  final String lang;
  const OffersGrid({super.key, required this.items, required this.lang});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomAppBar(
          title: AppTranslations.translate(context, AppText.findProduct),
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
        ListView.builder(
          padding: const EdgeInsets.all(10),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisCount: 2, // عدد العناصر في كل صف
          //   childAspectRatio: 0.8, // نسبة العرض إلى الارتفاع
          //   crossAxisSpacing: 10, // المسافة بين العناصر أفقيًا
          //   mainAxisSpacing: 10, // المسافة بين العناصر رأسيًا
          // ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return CustomCardItemsOffers(itemsModel: items[index], lang: lang);
          },
        ),
      ],
    );
  }
}
