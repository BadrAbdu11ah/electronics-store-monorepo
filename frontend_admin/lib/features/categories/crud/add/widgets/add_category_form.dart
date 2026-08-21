import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frontend_admin/core/constant/app_color.dart';
import 'package:frontend_admin/core/function/upload_file.dart';
import 'package:frontend_admin/core/shared/custom_button.dart';
import 'package:frontend_admin/core/shared/custom_text_form.dart';
import 'package:frontend_admin/features/categories/crud/add/bloc/add_category_bloc.dart';

class AddCategoryForm extends StatefulWidget {
  final AddCategoryState state;
  const AddCategoryForm({super.key, required this.state});

  @override
  State<AddCategoryForm> createState() => _AddCategoryFormState();
}

class _AddCategoryFormState extends State<AddCategoryForm> {
  late TextEditingController nameController;
  late TextEditingController nameArController;
  late TextEditingController descriptionController;

  @override
  void initState() {
    nameController = TextEditingController();
    nameArController = TextEditingController();
    descriptionController = TextEditingController();
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
                context.read<AddCategoryBloc>().add(
                  AddCategoryEvent.setImage(file),
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
            text: "إضافة",
            onPressed: () {
              FocusScope.of(context).unfocus();
              context.read<AddCategoryBloc>().add(
                AddCategoryEvent.submit(
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
