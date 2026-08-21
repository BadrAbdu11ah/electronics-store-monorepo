import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Future<File?>? imageUploadCamera() async {
  final picker = ImagePicker();
  final XFile? file = await picker.pickImage(source: ImageSource.camera);
  if (file == null) {
    return null;
  }
  return File(file.path);
}

Future<File?>? fileUploadGallery({bool isSvg = true}) async {
  FilePickerResult? result = await FilePicker.pickFiles(
    type: FileType.custom,
    allowedExtensions: isSvg
        ? ['svg', 'SVG']
        : ['jpeg', 'png', 'jpg', 'gif', "webp"],
  );
  if (result != null) {
    return File(result.files.single.path!);
  }
  return null;
}

void showBottomMenu({
  required BuildContext context,
  required Function() camera,
  required Function() gallery,
}) {
  showModalBottomSheet(
    context: context,
    builder: (_) => Container(
      padding: const EdgeInsets.all(20),
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Choose Image From",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: camera,
            child: Row(
              children: [
                Icon(Icons.camera, size: 40, color: Colors.red),
                const SizedBox(width: 10),
                Text("Camera", style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: gallery,
            child: Row(
              children: [
                Icon(Icons.photo, size: 40, color: Colors.green),
                const SizedBox(width: 10),
                Text("Gallery", style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
