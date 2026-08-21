import 'package:electronics_store_delivery/app_translations.dart';
import 'package:electronics_store_delivery/core/constant/app_color.dart';
import 'package:electronics_store_delivery/data/model/address/address_model.dart';
import 'package:electronics_store_delivery/data/static/app_text.dart';
import 'package:flutter/material.dart';

class TrackingCardMap extends StatelessWidget {
  // نموذج بيانات عنوان الطلب (الوجهة)
  final AddressModel addressModel;
  final double? currentLat;
  final double? currentLong;

  const TrackingCardMap({
    super.key,
    required this.addressModel,
    this.currentLat,
    this.currentLong,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // بطاقة حاوية لعرض البيانات
      child: SizedBox(
        // ارتفاع البطاقة
        height: 320,
        // العرض الكامل للشاشة
        width: double.infinity,
        child: Padding(
          // حواشي داخلية للبطاقة
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // محاذاة العناصر عمودياً بالمنتصف
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // نص تنبيه الخريطة
              Text(
                AppTranslations.translate(context, AppText.mapLater),
                style: TextStyle(
                  // حجم الخط
                  fontSize: 16,
                  // لون النص الرئيسي
                  color: AppColor.themeBlackColor,
                  // خط عريض
                  fontWeight: FontWeight.bold,
                ),
              ),
              // مسافة فاصلة
              const SizedBox(height: 15),

              // --- 1. قسم الموقع الحالي للمندوب ---
              Row(
                // محاذاة الأيقونة والنص بالمنتصف
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // أيقونة الموقع الحالي
                  const Icon(Icons.my_location, color: Colors.blue),
                  // مسافة أفقتية
                  const SizedBox(width: 8),
                  // نص عنوان الموقع الحالي
                  Text(
                    AppTranslations.translate(context, AppText.currentLocation),
                    style: const TextStyle(
                      // حجم الخط
                      fontSize: 16,
                      // خط عريض
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              // مسافة فاصلة
              const SizedBox(height: 5),
              // عرض إحداثيات الموقع الحالي
              Text(
                currentLat != null && currentLong != null
                    ? 'Lat: $currentLat \n Long: $currentLong'
                    : 'جاري تحديد الموقع...',
                // محاذاة النص بالمنتصف
                textAlign: TextAlign.center,
                style: TextStyle(
                  // حجم الخط
                  fontSize: 14,
                  // لون النص
                  color: AppColor.themeBlackColor,
                ),
              ),

              // خط فاصل بين الموقعين
              const Divider(height: 25, thickness: 1),

              // --- 2. قسم موقع الطلب (الوجهة) ---
              Row(
                // محاذاة الأيقونة والنص بالمنتصف
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // أيقونة نقطة الوصول
                  const Icon(Icons.location_on, color: Colors.red),
                  // مسافة أفقتية
                  const SizedBox(width: 8),
                  // نص عنوان موقع الطلب
                  const Text(
                    "موقع الطلب (الوجهة):",
                    style: TextStyle(
                      // حجم الخط
                      fontSize: 16,
                      // خط عريض
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              // مسافة فاصلة
              const SizedBox(height: 5),
              // عرض إحداثيات موقع التسليم
              Text(
                'Lat: ${addressModel.lat} \n Long: ${addressModel.long}',
                // محاذاة النص بالمنتصف
                textAlign: TextAlign.center,
                style: TextStyle(
                  // حجم الخط
                  fontSize: 14,
                  // لون النص
                  color: AppColor.themeBlackColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
