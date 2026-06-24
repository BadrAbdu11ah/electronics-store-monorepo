import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/id/injection.dart';
import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/data/model/items_model.dart';
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
import 'package:electronics_store/features/choose_language/view/choose_language.dart';
import 'package:electronics_store/features/home/home_page/bloc/home_page_bloc.dart';
import 'package:electronics_store/features/home/home_page/view/home_page_view.dart';
import 'package:electronics_store/features/home/home_screen/bloc/home_screen_bloc.dart';
import 'package:electronics_store/features/home/home_screen/view/home_screen_view.dart';
import 'package:electronics_store/features/home/settings_page/bloc/settings_page_bloc.dart';
import 'package:electronics_store/features/home/settings_page/view/settings_page_view.dart';
import 'package:electronics_store/features/items_feature/items/bloc/items_bloc.dart';
import 'package:electronics_store/features/items_feature/items/view/items_view.dart';
import 'package:electronics_store/features/items_feature/items_details/bloc/items_details_bloc.dart';
import 'package:electronics_store/features/items_feature/items_details/view/items_details.dart';
import 'package:electronics_store/features/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:electronics_store/features/on_boarding/view/on_boarding_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final AppService appService = AppService();
    String? step = appService.sharedPreferences.getString("step");

    String? finalRouteName = settings.name;

    // تطبيق منطق الـ Middleware عند الدخول للتطبيق
    if (finalRouteName == AppRoute.chooseLanguage ||
        finalRouteName == AppRoute.onBoarding) {
      if (step == "2") {
        finalRouteName = AppRoute.homeScreen;
      } else if (step == "1") {
        finalRouteName = AppRoute.login;
      } else if (step == "0") {
        finalRouteName = AppRoute.onBoarding;
      }
    }

    switch (finalRouteName) {
      case AppRoute.chooseLanguage:
        return MaterialPageRoute(builder: (_) => const ChooseLanguage());

      case AppRoute.onBoarding:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<OnBoardingBloc>(),
            child: const OnBoardingView(),
          ),
        );

      case AppRoute.login:
        final args = settings.arguments as Map<String, String?>?;

        final email = args?['email'];
        final password = args?['password'];

        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<LoginBloc>(),
            child: LoginView(email: email, password: password),
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
        final args = settings.arguments as Map<String, String?>?;

        final email = args?['email'];
        final password = args?['password'];
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<VerfiyCodeSignUpBloc>(),
            child: VerfiyCodeSignUpView(email: email!, password: password!),
          ),
        );
      case AppRoute.successSignUp:
        final args = settings.arguments as Map<String, String?>?;

        final email = args?['email'];
        final password = args?['password'];
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<SuccessSignUpBloc>(),
            child: SuccessSignUpView(email: email!, password: password!),
          ),
        );
      case AppRoute.forgetPassword:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<ForgetPasswordBloc>(),
            child: ForgetPasswordView(),
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
        final args = settings.arguments as Map<String, String?>?;

        final email = args?['email'];
        final password = args?['password'];
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<SuccessResetPasswordBloc>(),
            child: SuccessResetPasswordView(email: email!, password: password!),
          ),
        );
      case AppRoute.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<HomeScreenBloc>(),
            child: HomeScreenView(),
          ),
        );
      case AppRoute.homePage:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                sl<HomePageBloc>()..add(const HomePageEvent.started()),
            child: HomePageView(),
          ),
        );
      case AppRoute.settings:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<SettingsPageBloc>(),
            child: SettingsPageView(),
          ),
        );
      case AppRoute.items:
        final args = settings.arguments as Map<String, dynamic>?;

        final categoryId = args?['categoryId'];
        final categories = args?['categories'];
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<ItemsBloc>()
              ..add(
                ItemsEvent.started(
                  categoryId: categoryId,
                  categories: categories,
                ),
              ),
            child: ItemsView(categoryId: categoryId, categories: categories),
          ),
        );
      case AppRoute.itemsDetails:
        final itemsModel = settings.arguments as ItemsModel;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<ItemsDetailsBloc>(),
            child: ItemsDetails(itemsModel: itemsModel),
          ),
        );
      default:
        return null;
    }
  }
}
