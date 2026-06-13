import 'package:electronics_store/app_router.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/localization/bloc/localization_bloc.dart';
import 'package:electronics_store/core/services/app_service.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // تهيئة الخدمات الشاملة مثل SharedPreferences و Firebase
  await initialService();

  runApp(
    BlocProvider(
      create: (context) =>
          LocalizationBloc()..add(LocalizationEvent.loadSavedLocalization()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalizationBloc, LocalizationState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Electronics Store',

          // تطبيق اللغة والثيم القادمة من الـ State الخاص بالـ Bloc
          locale: state.locale,
          theme: state.themeData,

          // إعدادات الـ Localizations الافتراضية في فلاتر لدعم التوجه (RTL / LTR)
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [Locale('ar', ''), Locale('en', '')],
          onGenerateRoute: AppRouter.onGenerateRoute,
          initialRoute: AppRoute.onBoarding,
        );
      },
    );
  }
}
