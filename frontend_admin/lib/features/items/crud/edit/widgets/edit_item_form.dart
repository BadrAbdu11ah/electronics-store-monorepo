import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_admin/core/function/upload_file.dart';
import 'package:frontend_admin/core/function/valid_input.dart';
import 'package:frontend_admin/core/shared/app_dropdown_field.dart';
import 'package:frontend_admin/core/shared/custom_button.dart';
import 'package:frontend_admin/core/shared/custom_text_form.dart';
import 'package:frontend_admin/core/shared/handling_data_view.dart';
import 'package:frontend_admin/data/model/category/category_model.dart';
import 'package:frontend_admin/data/model/item/item_model.dart';
import 'package:frontend_admin/features/items/crud/edit/bloc/edit_item_bloc.dart';

class EditItemForm extends StatefulWidget {
  final bool isLoading;
  final ItemModel item;

  final EditItemState state;
  const EditItemForm({
    super.key,
    required this.state,
    required this.isLoading,
    required this.item,
  });

  @override
  State<EditItemForm> createState() => _EditItemFormState();
}

class _EditItemFormState extends State<EditItemForm> {
  late TextEditingController nameController;
  late TextEditingController nameArController;
  late TextEditingController descriptionController;
  late TextEditingController descriptionArController;
  late TextEditingController countController;
  late TextEditingController priceController;
  late TextEditingController discountController;
  late TextEditingController deliveryTimeController;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void initState() {
    nameController = TextEditingController(text: widget.item.name);
    nameArController = TextEditingController(text: widget.item.nameAr);
    descriptionController = TextEditingController(text: widget.item.desc);
    descriptionArController = TextEditingController(text: widget.item.descAr);
    countController = TextEditingController(text: widget.item.count.toString());
    priceController = TextEditingController(text: widget.item.price.toString());
    discountController = TextEditingController(
      text: widget.item.discount.toString(),
    );
    deliveryTimeController = TextEditingController(
      text: widget.item.deliveryTime.toString(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListView(
              children: [
                SizedBox(height: 20),
                CustomTextForm(
                  // hintText: 'اسم القسم بالإنجليزي',
                  labelText: 'اسم القسم بالإنجليزي',
                  iconData: Icons.person,
                  myController: nameController,
                  valid: (val) {
                    return validInput(context, val!, 1, 1000, "name");
                  },
                ),
                CustomTextForm(
                  // hintText: 'اسم القسم بالعربي',
                  labelText: 'اسم القسم بالعربي',
                  iconData: Icons.location_city_rounded,
                  myController: nameArController,
                  valid: (val) {
                    return validInput(context, val!, 1, 1000, "nameAr");
                  },
                ),
                // 1. الوصف الإنجليزي (استخدام نوع text للسماح بكافة النصوص والرموز)
                CustomTextForm(
                  labelText: 'الوصف',
                  iconData: Icons.streetview_rounded,
                  myController: descriptionController,
                  valid: (val) {
                    return validInput(context, val!, 1, 5000, "text");
                  },
                ),

                // 2. الوصف العربي
                CustomTextForm(
                  labelText: 'الوصف بالعربي',
                  iconData: Icons.streetview_rounded,
                  myController: descriptionArController,
                  valid: (val) {
                    return validInput(context, val!, 1, 5000, "text");
                  },
                ),

                // 3. السعر (استخدام نوع decimal وزيادة الحد الأقصى)
                CustomTextForm(
                  labelText: 'السعر',
                  iconData: Icons.attach_money,
                  myController: priceController,
                  isNumber: true,
                  valid: (val) {
                    return validInput(context, val!, 1, 10, "decimal");
                  },
                ),

                // 4. الخصم (استخدام نوع decimal)
                CustomTextForm(
                  labelText: 'الخصم',
                  iconData: Icons.discount,
                  myController: discountController,
                  isNumber: true,
                  valid: (val) {
                    return validInput(context, val!, 1, 10, "decimal");
                  },
                ),
                // 5. الكمية (زيادة الحد الأقصى للطول)
                CustomTextForm(
                  labelText: 'الكمية',
                  isNumber: true,
                  iconData: Icons.inventory,
                  myController: countController,
                  valid: (val) {
                    return validInput(context, val!, 1, 8, "number");
                  },
                ),
                CustomTextForm(
                  // hintText: 'الوصف',
                  labelText: 'وقت التوصيل',
                  iconData: Icons.streetview_rounded,
                  myController: deliveryTimeController,
                  isNumber: true,
                  valid: (val) {
                    return validInput(context, val!, 1, 2, "number");
                  },
                ),
                widget.state.categoriesStatus.when(
                  initial: () => SizedBox.shrink(),
                  loading: () => AppLoadingWidget(),
                  loaded: (categories) => AppDropdownField<CategoryModel>(
                    // العنوان
                    title: "اختر التصنيف",
                    // التلميح
                    hint: "اختر القسم المناسب",
                    // قائمة التصنيفات
                    items: categories,
                    // التصنيف المحدد حالياً
                    selectedItem: widget.state.category,
                    // تحديد حقل العرض العربي مع تفادي الـ null
                    itemAsString: (category) => category.nameAr ?? '',
                    // الأيقونة
                    prefixIcon: Icons.category_rounded,
                    // إرسال الحدث إلى البلوك عند الاختيار
                    onChanged: (category) {
                      context.read<EditItemBloc>().add(
                        EditItemEvent.setCategory(category),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                RadioListTile(
                  title: Text("Active"),
                  groupValue: widget.state.active,
                  value: 1,
                  onChanged: (value) {
                    context.read<EditItemBloc>().add(
                      EditItemEvent.setActive(value!),
                    );
                  },
                ),
                RadioListTile(
                  title: Text("Hidden"),
                  value: 0,
                  groupValue: widget.state.active,
                  onChanged: (value) {
                    context.read<EditItemBloc>().add(
                      EditItemEvent.setActive(value!),
                    );
                  },
                ),

                const SizedBox(height: 15),
                widget.state.image != null
                    ? Image.file(
                        widget.state.image!,
                        height: 90,
                        width: 150,
                        // fit: BoxFit.cover,
                      )
                    : AnimatedContainer(
                        margin: EdgeInsets.only(right: 5), // 5 إلى اليمين
                        duration: Duration(milliseconds: 900), // زمن التحريك
                        height: 120,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Hero(
                          tag: "${widget.item.id}",
                          child: CachedNetworkImage(
                            imageUrl: widget.item.image!,
                            fit: BoxFit.contain,
                            placeholder: (context, url) =>
                                Center(child: CircularProgressIndicator()),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.broken_image),
                          ),
                        ),
                      ),
                const SizedBox(height: 20),
                MaterialButton(
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  onPressed: () async {
                    showBottomMenu(
                      context: context,
                      camera: () async {
                        File? file = await imageUploadCamera();
                        if (context.mounted && file != null) {
                          context.read<EditItemBloc>().add(
                            EditItemEvent.setImage(file),
                          );
                          Navigator.pop(context);
                        }
                      },
                      gallery: () async {
                        File? file = await fileUploadGallery(isSvg: false);
                        if (context.mounted && file != null) {
                          context.read<EditItemBloc>().add(
                            EditItemEvent.setImage(file),
                          );
                          Navigator.pop(context);
                        }
                      },
                    );
                  },
                  child: const Text('تغيير الصورة'),
                ),
                SizedBox(height: 20),
                CustomButton(
                  text: "حفظ",
                  onPressed: () {
                    if (!formKey.currentState!.validate()) return;

                    FocusScope.of(context).unfocus();
                    context.read<EditItemBloc>().add(
                      EditItemEvent.submit(
                        widget.item.id!,
                        name: nameController.text,
                        nameAr: nameArController.text,
                        description: descriptionController.text,
                        descriptionAr: descriptionArController.text,
                        count: int.parse(countController.text),
                        price: double.parse(priceController.text),
                        discount: double.parse(discountController.text),
                        deliveryTime: int.parse(deliveryTimeController.text),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          if (widget.isLoading) ...[
            // 1. حاجز شفاف يمنع المستخدم من الضغط على أي زر خلفه
            const ModalBarrier(
              dismissible: false,
              color: Colors.black26, // تعتيم خفيف وأنيق للشاشة (25% سواد)
            ),
            // 2. مؤشر التحميل متمركز في منتصف الشاشة تماماً
            Center(
              child: AppLoadingWidget(), // الوجت المخصص للتحميل
            ),
          ],
        ],
      ),
    );
  }
}
