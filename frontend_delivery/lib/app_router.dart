import 'package:electronics_store_delivery/core/constant/app_route.dart';
import 'package:electronics_store_delivery/core/id/injection.dart';
import 'package:electronics_store_delivery/core/services/app_service.dart';
import 'package:electronics_store_delivery/data/model/order/order_model.dart';
import 'package:electronics_store_delivery/features/auth/feature/forget_password_features/forget_password/bloc/delivery_forget_password_bloc.dart';
import 'package:electronics_store_delivery/features/auth/feature/forget_password_features/forget_password/view/forget_password_view.dart';
import 'package:electronics_store_delivery/features/auth/feature/forget_password_features/reset_password/view/reset_password_view.dart';
import 'package:electronics_store_delivery/features/auth/feature/forget_password_features/success/bloc/delivery_success_bloc.dart';
import 'package:electronics_store_delivery/features/auth/feature/forget_password_features/success/view/success_view.dart';
import 'package:electronics_store_delivery/features/auth/feature/forget_password_features/verfiy_code/bloc/delivery_verfiy_code_bloc.dart';
import 'package:electronics_store_delivery/features/auth/feature/forget_password_features/verfiy_code/view/delivery_verfiy_code_view.dart';
import 'package:electronics_store_delivery/features/auth/feature/login/bloc/delivery_login_bloc.dart';
import 'package:electronics_store_delivery/features/auth/feature/login/view/login_view.dart';
import 'package:electronics_store_delivery/features/choose_language/view/delivery_choose_language.dart';
import 'package:electronics_store_delivery/features/home/home_screen/bloc/home_screen_bloc.dart';
import 'package:electronics_store_delivery/features/home/home_screen/view/home_screen_view.dart';
import 'package:electronics_store_delivery/features/home/settings_page/bloc/settings_page_bloc.dart';
import 'package:electronics_store_delivery/features/home/settings_page/view/settings_page_view.dart';

import 'package:electronics_store_delivery/features/orders/feature/archive/bloc/archive_bloc.dart';
import 'package:electronics_store_delivery/features/orders/feature/archive/view/archive_view.dart';
import 'package:electronics_store_delivery/features/orders/feature/details/bloc/order_details_bloc.dart';
import 'package:electronics_store_delivery/features/orders/feature/details/view/details.dart';
import 'package:electronics_store_delivery/features/orders/feature/pending/bloc/pending_bloc.dart';
import 'package:electronics_store_delivery/features/orders/feature/pending/view/pending_view.dart';
import 'package:electronics_store_delivery/features/orders/feature/tracking/bloc/tracking_bloc.dart';
import 'package:electronics_store_delivery/features/orders/feature/tracking/view/tracking_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final AppService appService = AppService();
    String? step = appService.sharedPreferences.getString("step");

    String? finalRouteName = settings.name;

    // تطبيق منطق الـ Middleware عند الدخول للتطبيق
    if (finalRouteName == AppRoute.chooseLanguage) {
      if (step == "2") {
        finalRouteName = AppRoute.homeScreen;
      } else if (step == "1") {
        finalRouteName = AppRoute.login;
      }
    }

    switch (finalRouteName) {
      case AppRoute.chooseLanguage:
        return MaterialPageRoute(
          builder: (_) => const DeliveryChooseLanguage(),
        );

      case AppRoute.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<DeliveryLoginBloc>(),
            child: LoginView(),
          ),
        );

      case AppRoute.forgetPassword:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<DeliveryForgetPasswordBloc>(),
            child: ForgetPasswordView(),
          ),
        );
      case AppRoute.verifyCode:
        final email = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<DeliveryVerfiyCodeBloc>(),
            child: DeliveryVerfiyCodeView(email: email),
          ),
        );
      case AppRoute.resetPassword:
        final email = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<DeliveryForgetPasswordBloc>(),
            child: ResetPasswordView(email: email),
          ),
        );
      case AppRoute.success:
        final args = settings.arguments as Map<String, String?>?;

        final email = args?['email'];
        final password = args?['password'];
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                sl<DeliverySuccessBloc>()..add(DeliverySuccessEvent.started()),
            child: SuccessView(email: email!, password: password!),
          ),
        );

      case AppRoute.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                sl<HomeScreenBloc>()..add(const HomeScreenEvent.started()),
            child: HomeScreenView(),
          ),
        );
      case AppRoute.settings:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<SettingsPageBloc>(),
            child: SettingsPageView(),
          ),
        );

      case AppRoute.ordersPending:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                sl<PendingBloc>()..add(PendingEvent.fetchOrders()),
            child: PendingView(),
          ),
        );
      case AppRoute.ordersArchive:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                sl<ArchiveBloc>()..add(ArchiveEvent.fetchOrders()),
            child: ArchiveView(),
          ),
        );

      case AppRoute.ordersDetails:
        final orderModel = settings.arguments as OrderModel;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                sl<OrderDetailsBloc>()
                  ..add(OrderDetailsEvent.started(orderModel: orderModel)),
            child: OrderDetails(orderModel: orderModel),
          ),
        );

      case AppRoute.ordersTracking:
        final orderModel = settings.arguments as OrderModel;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<TrackingBloc>(),
            child: TrackingView(order: orderModel),
          ),
        );
      default:
        return null;
    }
  }
}
