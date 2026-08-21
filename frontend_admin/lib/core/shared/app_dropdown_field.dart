import 'package:drop_down_list/drop_down_list.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';

// ويدجت عامة للقوائم المنسدلة تدعم أي نوع بيانات
class AppDropdownField<T> extends StatelessWidget {
  // عنوان الحقل العلوي
  final String title;
  // النص التوضيحي عند عدم الاختيار
  final String hint;
  // قائمة العناصر الكلية
  final List<T> items;
  // العنصر المحدد حالياً
  final T? selectedItem;
  // دالة تحويل الكائن إلى نص للعرض
  final String Function(T) itemAsString;
  // دالة تُستدعى عند اختيار عنصر
  final ValueChanged<T> onChanged;
  // أيقونة اختيارية للحقل
  final IconData? prefixIcon;

  const AppDropdownField({
    super.key,
    required this.title,
    required this.hint,
    required this.items,
    required this.selectedItem,
    required this.itemAsString,
    required this.onChanged,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    // بناء هيكل الحقل
    return InkWell(
      onTap: () => _showModal(context),

      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: TextField(
          enabled: false,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            hintText: selectedItem != null
                ? itemAsString(selectedItem as T)
                : hint,

            hintStyle: TextStyle(
              color: selectedItem != null ? Colors.black : Colors.black45,
              fontSize: 15.0,
            ),
            label: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Text(title),
            ),
            labelStyle: TextStyle(color: Colors.black),
            floatingLabelBehavior:
                FloatingLabelBehavior.always, //always: الليبل ثابت
            suffixIcon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.black54,
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          ),
        ),
      ),
    );
  }

  // دالة إظهار النافذة المنسدلة
  void _showModal(BuildContext context) {
    // تحويل القائمة مباشرة إلى عناصر دعم النمط العام دون فقدان الكائن الأصلي
    List<SelectedListItem<T>> dropDownItems = items
        .map((item) => SelectedListItem<T>(data: item))
        .toList();

    DropDownState<T>(
      dropDown: DropDown<T>(
        bottomSheetTitle: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
        ),
        data: dropDownItems,
        // تخصيص النص المعروض لكل عنصر
        listItemBuilder: (index, dataItem) {
          return Text(itemAsString(dataItem.data));
        },
        // تنفيذ التغيير وإرجاع الكائن الأصلي مباشرة
        onSelected: (selectedItems) {
          if (selectedItems.isNotEmpty) {
            onChanged(selectedItems.first.data);
          }
        },
      ),
    ).showModal(context);
  }
}
