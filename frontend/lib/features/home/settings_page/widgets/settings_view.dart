import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/core/constant/app_image_asset.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  final List<Map<String, dynamic>> options;
  const SettingsView({super.key, required this.options});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        Stack(
          // وضع العناصر فوق بعضها
          clipBehavior: Clip.none, // السماح ببروز العناصر خارج الحدود
          alignment: Alignment.center, // محاذاة في المنتصف
          children: [
            Container(
              // خلفية الجزء العلوي
              height: screenWidth / 2.2,
              color: AppColor.themeBlackColor,
            ),
            Positioned(
              // تحديد موقع الصورة الشخصية
              top: screenWidth / 3.5,
              child: Container(
                // إطار الصورة الأبيض
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: CircleAvatar(
                  // الصورة الشخصية بشكل دائري
                  radius: 70,
                  backgroundColor: Colors.grey[100],
                  backgroundImage: AssetImage(AppImageAsset.badr),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 100), // مساحة فارغة للتعويض عن بروز الصورة
        Container(
          // حاوية القائمة
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            // بطاقة تحتوي الخيارات
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...List.generate(options.length, (i) {
                  return Column(
                    children: [
                      if (i != 0) Divider(),
                      ListTile(
                        onTap: options[i]['onTap'],
                        title: Text(options[i]['title']),
                        trailing: options[i]['icon'],
                      ),
                    ],
                  );
                }),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
