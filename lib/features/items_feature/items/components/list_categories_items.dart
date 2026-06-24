import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/core/function/translate_database.dart';
import 'package:electronics_store/data/model/categories_model.dart';
import 'package:electronics_store/features/items_feature/items/bloc/items_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListCategoriesItems extends StatelessWidget {
  final List<CategoriesModel> categories;
  final int categoryId;
  const ListCategoriesItems({
    super.key,
    required this.categories,
    required this.categoryId,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 80, // مهم جدًا
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 10),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              context.read<ItemsBloc>().add(
                ItemsEvent.loadItems(categoryId: index),
              );
            },
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 40,
                  decoration: categoryId == index
                      ? BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor.themeColor!,
                              width: 3,
                            ),
                          ),
                        )
                      : null,
                  child: Text(
                    translateDatabase(
                      categories[index].categoriesName!,
                      categories[index].categoriesNameAr!,
                    ),
                    style: TextStyle(fontSize: 20),
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
