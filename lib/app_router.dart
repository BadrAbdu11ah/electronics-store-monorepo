import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/id/injection.dart';
import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/forget_password/bloc/forget_password_bloc.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/forget_password/view/forget_password_view.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/reset_password/bloc/reset_password_bloc.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/reset_password/view/reset_password_view.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/success_reset_password/bloc/success_reset_password_bloc.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/success_reset_password/view/success_reset_password_view.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/verfiy_code_password/bloc/verfiy_code_password_bloc.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/verfiy_code_password/view/verfiy_code_password_view.dart';
import 'package:electronics_store/features/auth/feature/login/bloc/login_bloc.dart';
import 'package:electronics_store/features/auth/feature/login/view/login_view.dart';
import 'package:electronics_store/features/auth/feature/sign_up_features/sign_up/bloc/sign_up_bloc.dart';
import 'package:electronics_store/features/auth/feature/sign_up_features/sign_up/view/sign_up_view.dart';
import 'package:electronics_store/features/auth/feature/sign_up_features/success_sign_up/bloc/success_sign_up_bloc.dart';
import 'package:electronics_store/features/auth/feature/sign_up_features/success_sign_up/view/success_sign_up_view.dart';
import 'package:electronics_store/features/auth/feature/sign_up_features/verfiy_code_sign_up/bloc/verfiy_code_sign_up_bloc.dart';
import 'package:electronics_store/features/auth/feature/sign_up_features/verfiy_code_sign_up/view/verfiy_code_sign_up_view.dart';
import 'package:electronics_store/features/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:electronics_store/features/on_boarding/view/on_boarding_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    // 1. الوصول إلى خدمة تفضيلات المستخدم الشاملة
    final AppService appService = AppService();
    String? step = appService.sharedPreferences.getString("step");

    // 2. متغير لتحديد المسار الفعلي بعد الفحص (حفظ المسار المطلوب افتراضياً)
    String? finalRouteName = settings.name;

    // 3. تطبيق منطق الـ Middleware (الاعتراض والتوجيه)
    if (finalRouteName == AppRoute.onBoarding) {
      if (step == "2") {
        finalRouteName = AppRoute.homeScreen;
      } else if (step == "1") {
        finalRouteName = AppRoute.login;
      }
    }

    // 4. بناء الشاشات بناءً على المسار النهائي بعد الفحص
    switch (finalRouteName) {
      case AppRoute.onBoarding:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<OnBoardingBloc>(),
            child: const OnBoardingView(),
          ),
        );

      case AppRoute.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<LoginBloc>(),
            child: const LoginView(),
          ),
        );
      case AppRoute.signUp:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<SignUpBloc>(),
            child: const SignUpView(),
          ),
        );
      case AppRoute.verifyCodeSignUp:
        final email = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<VerfiyCodeSignUpBloc>(),
            child: VerfiyCodeSignUpView(email: email),
          ),
        );
      case AppRoute.successSignUp:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<SuccessSignUpBloc>(),
            child: SuccessSignUpView(),
          ),
        );
      case AppRoute.forgetPassword:
        final email = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<ForgetPasswordBloc>(),
            child: ForgetPasswordView(email: email),
          ),
        );
      case AppRoute.verifyCodePassword:
        final email = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<VerfiyCodePasswordBloc>(),
            child: VerfiyCodePasswordView(email: email),
          ),
        );
      case AppRoute.resetPassword:
        final email = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<ResetPasswordBloc>(),
            child: ResetPasswordView(email: email),
          ),
        );
      case AppRoute.successResetPassword:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<SuccessResetPasswordBloc>(),
            child: SuccessResetPasswordView(),
          ),
        );
      default:
        return null;
    }
  }
}
