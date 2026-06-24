import 'package:cached_network_image/cached_network_image.dart';
import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/core/constant/app_image_asset.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/function/translate_database.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/data/model/items_model.dart';
import 'package:electronics_store/features/items_feature/items/bloc/items_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCardItems extends StatelessWidget {
  final ItemsModel itemsModel;
  final String lang;
  const CustomCardItems(this.itemsModel, {super.key, required this.lang});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRoute.itemsDetails,
          arguments: itemsModel,
        );
      },
      child: Card(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // مربع بخاصية التحريك
                  AnimatedContainer(
                    margin: EdgeInsets.only(right: 5), // 5 إلى اليمين
                    duration: Duration(milliseconds: 900), // زمن التحريك
                    height: 130,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Hero(
                      tag: "${itemsModel.itemsId}",
                      child: CachedNetworkImage(
                        imageUrl: itemsModel.itemsImage!,
                        fit: BoxFit.contain,
                        placeholder: (context, url) =>
                            Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            Icon(Icons.broken_image),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    translateDatabase(
                      itemsModel.itemsName!,
                      itemsModel.itemsNameAr!,
                    ),
                    style: TextStyle(
                      fontSize: lang == "ar" ? 15 : 16,
                      color: AppColor.titleColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppTranslations.translate(context, AppText.rating),
                        style: TextStyle(
                          fontSize: lang == "ar" ? 12 : 15,
                          color: AppColor.bodyColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          ...List.generate(
                            5,
                            (index) => Icon(Icons.star, size: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      itemsModel.itemsDiscount! > 0
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${itemsModel.itemsPrice} ر.س",
                                  style: TextStyle(
                                    fontSize: lang == "ar" ? 10 : 12,
                                    color: AppColor.priceColor,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                Text(
                                  "${itemsModel.discountedPrice} ر.س",
                                  style: TextStyle(
                                    fontSize: lang == "ar" ? 12 : 14,
                                    color: AppColor.priceColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          : Text(
                              "${itemsModel.itemsPrice} ر.س)",
                              style: TextStyle(
                                fontSize: lang == "ar" ? 12 : 15,
                                color: AppColor.priceColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                      BlocBuilder<ItemsBloc, ItemsState>(
                        buildWhen: (previous, current) =>
                            previous.isFavorite != current.isFavorite,
                        builder: (context, state) {
                          return IconButton(
                            onPressed: () {
                              // إذا كان 1 احذفه، وإذا كان 0 أضفه
                              if (state.isFavorite[itemsModel.itemsId] == 1) {
                                context.read<ItemsBloc>().add(
                                  ItemsEvent.removeFavorite(
                                    itemsModel.itemsId!,
                                  ),
                                );
                              } else {
                                context.read<ItemsBloc>().add(
                                  ItemsEvent.addFavorite(itemsModel.itemsId!),
                                );
                              }
                            },
                            icon: Icon(
                              state.isFavorite[itemsModel.itemsId] == 1
                                  ? Icons.favorite
                                  : Icons.favorite_outline,
                              color: AppColor.themeBlackColor,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (itemsModel.itemsDiscount! > 0)
              Image.asset(AppImageAsset.sale, width: 50),
          ],
        ),
      ),
    );
  }
}
