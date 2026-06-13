import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppService {
  static final AppService _instance = AppService._internal();
  factory AppService() => _instance;
  AppService._internal();

  late final SharedPreferences sharedPreferences;

  Future<void> init() async {
    await Firebase.initializeApp();
    sharedPreferences = await SharedPreferences.getInstance();
  }
}

// دالة التهيئة التي ستستدعى في الـ main
Future<void> initialService() async {
  await AppService().init();
}
