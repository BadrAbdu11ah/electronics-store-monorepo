import 'package:cached_network_image/cached_network_image.dart';
import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/core/function/translate_database.dart';
import 'package:electronics_store/data/model/item/item_model.dart';
import 'package:flutter/material.dart';

class CustomCardFavorite extends StatelessWidget {
  final ItemModel item;
  final String lang;
  final void Function() onCard;
  final void Function() onFavorite;
  const CustomCardFavorite({
    super.key,
    required this.item,
    required this.onCard,
    required this.onFavorite,
    required this.lang,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCard,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: // مربع بخاصية التحريك
                AnimatedContainer(
                  margin: const EdgeInsets.only(right: 5), // 5 إلى اليمين
                  duration: const Duration(milliseconds: 900), // زمن التحريك
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Hero(
                    tag: "${item.id}",
                    child: CachedNetworkImage(
                      imageUrl: item.image!,
                      fit: BoxFit.contain,
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.broken_image),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                translateDatabase(item.name!, item.nameAr!),
                maxLines: 1, // حماية النص من النزول لسطر ثاني وتخريب التصميم
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: lang == "ar" ? 14 : 15,
                  color: AppColor.titleColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppTranslations.translate(context, AppText.rating),
                    style: TextStyle(
                      fontSize: lang == "ar" ? 11 : 13,
                      color: AppColor.bodyColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: List.generate(
                      5,
                      (index) =>
                          const Icon(Icons.star, size: 13, color: Colors.amber),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: onFavorite,
                    icon: Icon(
                      Icons.delete_outline_outlined,
                      color: AppColor.themeBlackColor,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "${item.price} ر.س",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColor.priceColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
