import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frontend_admin/core/constant/app_color.dart';
import 'package:frontend_admin/core/function/upload_file.dart';
import 'package:frontend_admin/core/shared/custom_button.dart';
import 'package:frontend_admin/core/shared/custom_text_form.dart';
import 'package:frontend_admin/data/model/category/category_model.dart';
import 'package:frontend_admin/features/categories/crud/edit/bloc/edit_category_bloc.dart';

class EditCategoryForm extends StatefulWidget {
  final EditCategoryState state;
  final CategoryModel category;
  const EditCategoryForm({
    super.key,
    required this.category,
    required this.state,
  });

  @override
  State<EditCategoryForm> createState() => _EditCategoryFormState();
}

class _EditCategoryFormState extends State<EditCategoryForm> {
  late TextEditingController nameController;
  late TextEditingController nameArController;
  late TextEditingController descriptionController;

  @override
  void initState() {
    nameController = TextEditingController(text: widget.category.name);
    nameArController = TextEditingController(text: widget.category.nameAr);
    descriptionController = TextEditingController(
      text: widget.category.description,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ListView(
        children: [
          CustomTextForm(
            // hintText: 'اسم القسم بالإنجليزي',
            labelText: 'اسم القسم بالإنجليزي',
            iconData: Icons.person,
            myController: nameController,
            valid: (val) {
              return null;
            },
          ),
          CustomTextForm(
            // hintText: 'اسم القسم بالعربي',
            labelText: 'اسم القسم بالعربي',
            iconData: Icons.location_city_rounded,
            myController: nameArController,
            valid: (val) {
              return null;
            },
          ),
          CustomTextForm(
            // hintText: 'الوصف',
            labelText: 'الوصف',
            iconData: Icons.streetview_rounded,
            myController: descriptionController,
            valid: (val) {
              return null;
            },
          ),
          MaterialButton(
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
            onPressed: () async {
              File? file = await fileUploadGallery();
              if (context.mounted && file != null) {
                context.read<EditCategoryBloc>().add(
                  EditCategoryEvent.setImage(file),
                );
              }
            },
            child: const Text('اختر صورة'),
          ),
          const SizedBox(height: 20),
          if (widget.state.image != null)
            AnimatedContainer(
              margin: EdgeInsets.only(right: 5), // 5 إلى اليمين
              duration: Duration(milliseconds: 900), // زمن التحريك
              height: 120,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.file(
                widget.state.image!,
                width: 50,
                height: 50,
                fit: BoxFit.contain,
                colorFilter: ColorFilter.mode(
                  AppColor.themeBlackColor!,
                  BlendMode.srcIn,
                ),
              ),
            ),

          const SizedBox(height: 20),
          CustomButton(
            text: "Edit",
            onPressed: () {
              FocusScope.of(context).unfocus();
              context.read<EditCategoryBloc>().add(
                EditCategoryEvent.submit(
                  widget.category.id!,
                  name: nameController.text,
                  nameAr: nameArController.text,
                  description: descriptionController.text,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
