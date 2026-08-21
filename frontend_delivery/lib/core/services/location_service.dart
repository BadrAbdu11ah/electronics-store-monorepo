import 'package:geolocator/geolocator.dart';

// واجهة خدمة الموقع للتعامل مع الـ GPS
abstract class LocationService {
  // فحص ما إذا كانت خدمة الموقع مفعلة في الجهاز
  Future<bool> isLocationServiceEnabled();

  // فحص أذونات الوصول الحالية للموقع
  Future<LocationPermission> checkPermission();

  // طلب أذونات الوصول للموقع من المستخدم
  Future<LocationPermission> requestPermission();

  // جلب الإحداثيات الحالية لمرة واحدة
  Future<Position> getCurrentPosition();

  // الاستماع لتدفق تحديثات الموقع المباشرة والتتبع المستمر
  Stream<Position> getPositionStream({LocationSettings? locationSettings});
}

// التنفيذ الفعلي لخدمة الموقع باستخدام حزمة Geolocator
class LocationServiceImpl implements LocationService {
  @override
  // فحص حالة خدمة الموقع على الجهاز
  Future<bool> isLocationServiceEnabled() {
    return Geolocator.isLocationServiceEnabled();
  }

  @override
  // فحص أذونات الوصول للموقع
  Future<LocationPermission> checkPermission() {
    return Geolocator.checkPermission();
  }

  @override
  // طلب الأذونات من المستخدم
  Future<LocationPermission> requestPermission() {
    return Geolocator.requestPermission();
  }

  @override
  // جلب الموقع الحالي المباشر
  Future<Position> getCurrentPosition() {
    return Geolocator.getCurrentPosition();
  }

  @override
  // إرجاع بث مباشر لتحديثات الموقع عند تحرك مندوب التوصيل
  Stream<Position> getPositionStream({LocationSettings? locationSettings}) {
    // إرجاع الـ Stream مع ضبط إعدادات التحديث الدقيق والتتبع
    return Geolocator.getPositionStream(
      // locationSettings:
      //     locationSettings ??
      //     const LocationSettings(
      //       accuracy: LocationAccuracy.high, // دقة عالية
      //       distanceFilter: 10, // التحديث عند التحرك كل 10 أمتار
      //     ),
    );
  }
}
