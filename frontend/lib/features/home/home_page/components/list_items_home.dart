import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/function/translate_database.dart';
import 'package:electronics_store/data/model/item/item_model.dart';
import 'package:flutter/material.dart';

class ListItemsHome extends StatelessWidget {
  final String lang;
  final List<ItemModel> items;
  const ListItemsHome({super.key, required this.items, required this.lang});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, i) {
          final itemsModel = items[i];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                AppRoute.itemsDetails,
                arguments: {"itemsmodel": itemsModel},
              );
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Image.network(
                    "${itemsModel.image}",
                    height: 90,
                    width: 150,
                    // fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 110,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Positioned(
                  top: 8,
                  left: lang == "en" ? 25 : null,
                  right: lang == "ar" ? 25 : null,
                  child: Text(
                    "${translateDatabase(itemsModel.name!, itemsModel.nameAr!)}",
                    style: TextStyle(
                      color: AppColor.themeWhiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: lang == "ar" ? 14 : 17,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
