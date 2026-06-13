import 'package:electronics_store/features/home/controller/home_page_controller.dart';
import 'package:electronics_store/core/class/handling_data_view.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/home/widgets/list_categories_home.dart';
import 'package:electronics_store/features/home/widgets/custom_card_home.dart';
import 'package:electronics_store/features/home/widgets/list_items_home.dart';
import 'package:electronics_store/widgets/custom_app_bar.dart';
import 'package:electronics_store/features/home/widgets/custom_title_home.dart';
import 'package:electronics_store/features/home/widgets/list_items_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomePageControllerImp> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageControllerImp>(
      builder: (controller) {
        return Container(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: [
              CustomAppBar(
                title: AppText.findProduct.tr,
                product: controller.product,
                onOrder: () {
                  controller.goToOrdersPanding();
                },
                onFavorite: () {
                  controller.goToFavoritepage();
                },
                onSearch: () {
                  controller.onSearchItems();
                },
                onChanged: (val) {
                  controller.checkSearch(val);
                },
              ),
              HandlingDataView(
                state: controller.stateRequest,
                child: controller.isSearch
                    ? ListItemsSearch(listDataModel: controller.listSearchData)
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomCardHome(
                            title: AppText.summerOffers.tr,
                            subtitle: AppText.discount20.tr,
                          ),
                          CustomTitleHome(title: AppText.categories.tr),
                          ListCategoriesHome(),
                          if (controller.items.isNotEmpty)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomTitleHome(
                                  title: AppText.productsForYou.tr,
                                ),
                                ListItemsHome(),
                                CustomTitleHome(title: AppText.discount.tr),
                                ListItemsHome(),
                              ],
                            ),
                        ],
                      ),
              ),
            ],
          ),
        );
      },
    );
  }
}
