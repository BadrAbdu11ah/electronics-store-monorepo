import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_admin/app_translations.dart';
import 'package:frontend_admin/core/constant/app_color.dart';
import 'package:frontend_admin/core/constant/app_route.dart';
import 'package:frontend_admin/core/shared/handling_data_view.dart';
import 'package:frontend_admin/data/model/category/category_model.dart';
import 'package:frontend_admin/data/static/app_text.dart';
import 'package:frontend_admin/features/categories/crud/view/bloc/view_categories_bloc.dart';
import 'package:flutter_svg/svg.dart';

class CategoriesList extends StatelessWidget {
  final List<CategoryModel> categories;
  const CategoriesList({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10), // الحواف الخارجية
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return InkWell(
            onTap: () => Navigator.pushNamed(
              context,
              AppRoute.editCategory,
              arguments: category,
            ),
            child: Card(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: AnimatedContainer(
                        margin: EdgeInsets.only(right: 5), // 5 إلى اليمين
                        duration: Duration(milliseconds: 900), // زمن التحريك
                        height: 120,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: SvgPicture.network(
                          "${category.image}",
                          width: 80,
                          colorFilter: ColorFilter.mode(
                            AppColor.themeBlackColor!,
                            BlendMode.srcIn,
                          ),
                          errorBuilder: (context, error, stackTrace) =>
                              Icon(Icons.broken_image),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: ListTile(
                      title: Text(
                        "${category.name}",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(
                        "${category.createdAt}",
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () => AppDialogs.dialogDelete(
                              context: context,
                              title: AppTranslations.translate(
                                context,
                                AppText.deleteCategory,
                              ),
                              content: AppTranslations.translate(
                                context,
                                AppText.areYouSureYouWantToDeleteThisCategory,
                              ),
                              onConfirm: () {
                                context.read<ViewCategoriesBloc>().add(
                                  ViewCategoriesEvent.deleteCategory(
                                    category.id!,
                                  ),
                                );
                                Navigator.pop(context);
                              },
                            ),
                            icon: Icon(Icons.delete),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
