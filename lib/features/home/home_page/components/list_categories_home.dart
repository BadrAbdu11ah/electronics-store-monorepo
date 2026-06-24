import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/function/translate_database.dart';
import 'package:electronics_store/data/model/categories_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListCategoriesHome extends StatelessWidget {
  final List<CategoriesModel> categories;

  const ListCategoriesHome({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 100, // مهم جدًا
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 10),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          final categoriesModel = categories[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                AppRoute.items,
                arguments: {
                  'categoryId': categoriesModel.categoriesId,
                  'categories': categories,
                },
              );
            },
            child: Column(
              children: [
                AnimatedContainer(
                  padding: EdgeInsets.all(8),
                  duration: Duration(milliseconds: 900), // زمن التحريك
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: AppColor.themeColor, // اللون
                    borderRadius: BorderRadius.circular(20), // الاستدارة
                  ),
                  child: SvgPicture.network(
                    "${categoriesModel.categoriesImage}",
                    colorFilter: ColorFilter.mode(
                      AppColor.themeBlackColor!,
                      BlendMode.srcIn,
                    ),
                    errorBuilder: (context, error, stackTrace) =>
                        Icon(Icons.broken_image),
                  ),
                ),
                Text(
                  "${translateDatabase(categoriesModel.categoriesName!, categoriesModel.categoriesNameAr!)}",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
