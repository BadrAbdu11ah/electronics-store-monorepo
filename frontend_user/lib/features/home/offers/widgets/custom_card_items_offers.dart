import 'package:cached_network_image/cached_network_image.dart';
import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/core/constant/app_image_asset.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/function/translate_database.dart';
import 'package:electronics_store/data/model/item/item_model.dart';
import 'package:electronics_store/features/home/offers/bloc/offers_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCardItemsOffers extends StatelessWidget {
  final ItemModel itemsModel;
  final String lang;
  const CustomCardItemsOffers({
    super.key,
    required this.itemsModel,
    required this.lang,
  });

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
                      tag: "${itemsModel.id}",
                      child: CachedNetworkImage(
                        imageUrl: itemsModel.image!,
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
                    translateDatabase(itemsModel.name!, itemsModel.nameAr!),
                    style: TextStyle(
                      fontSize: lang == "ar" ? 15 : 16,
                      color: AppColor.titleColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        color: AppColor.themeBlackColor,
                      ),
                      SizedBox(width: 5),
                      Text(
                        lang == "ar"
                            ? "${itemsModel.deliveryTime} دقيقة"
                            : "${itemsModel.deliveryTime} minutes",
                        style: TextStyle(
                          fontSize: lang == "ar" ? 12 : 15,
                          color: AppColor.themeBlackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      itemsModel.discount! > 0
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${itemsModel.discountedPrice} ر.س",
                                  style: TextStyle(
                                    fontSize: lang == "ar" ? 12 : 14,
                                    color: AppColor.redColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "${itemsModel.price} ر.س",
                                  style: TextStyle(
                                    fontSize: lang == "ar" ? 10 : 12,
                                    color: AppColor.redColor,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            )
                          : Text(
                              "${itemsModel.price} ر.س",
                              style: TextStyle(
                                fontSize: lang == "ar" ? 12 : 15,
                                color: AppColor.redColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                      BlocBuilder<OffersBloc, OffersState>(
                        buildWhen: (previous, current) =>
                            previous.isFavorite != current.isFavorite,
                        builder: (context, state) {
                          return IconButton(
                            onPressed: () {
                              // إذا كان 1 احذفه، وإذا كان 0 أضفه
                              if (state.isFavorite[itemsModel.id]!) {
                                context.read<OffersBloc>().add(
                                  OffersEvent.removeFavorite(itemsModel.id!),
                                );
                              } else {
                                context.read<OffersBloc>().add(
                                  OffersEvent.addFavorite(itemsModel.id!),
                                );
                              }
                            },
                            icon: Icon(
                              state.isFavorite[itemsModel.id]!
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
            if (itemsModel.discount! > 0)
              Image.asset(AppImageAsset.sale, width: 50),
          ],
        ),
      ),
    );
  }
}
