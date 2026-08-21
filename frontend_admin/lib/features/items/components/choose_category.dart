import 'package:drop_down_list/drop_down_list.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_admin/data/model/category/category_model.dart';
import 'package:frontend_admin/features/items/crud/add/bloc/add_item_bloc.dart';

class ChooseCategory extends StatelessWidget {
  final List<CategoryModel> allCategories;
  final CategoryModel? selctedCategory;

  const ChooseCategory({
    super.key,
    required this.allCategories,
    required this.selctedCategory,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // 1. إنشاء قائمة العناصر للعرض بأسماء التصنيفات
        List<SelectedListItem<String>> categoriesList = allCategories
            .map(
              (category) => SelectedListItem<String>(
                data: category.nameAr!, // النص المعروض للمستخدم
              ),
            )
            .toList();

        DropDownState<String>(
          dropDown: DropDown<String>(
            bottomSheetTitle: const Text(
              "اختر التصنيف",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            data: categoriesList,
            onSelected: (selectedItems) {
              if (selectedItems.isNotEmpty) {
                final selectedName = selectedItems.first.data;

                // 2. البحث عن القسم المختار وجلب الـ ID الخاص به
                final selectedCategory = allCategories.firstWhere(
                  (category) => category.nameAr == selectedName,
                );

                context.read<AddItemBloc>().add(
                  AddItemEvent.setCategory(selectedCategory),
                );

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "تم اختيار: ${selectedCategory.nameAr} (ID: ${selectedCategory.id})",
                    ),
                  ),
                );
              }
            },
          ),
        ).showModal(context);
      },
      child: selctedCategory != null
          ? Center(
              child: Text(
                "${selctedCategory!.nameAr}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            )
          : Row(
              children: [
                const Icon(Icons.category_rounded),
                const SizedBox(width: 10),
                Text(
                  "اختر القسم",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
    );
  }
}
