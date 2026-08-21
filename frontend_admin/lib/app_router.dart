import 'package:frontend_admin/core/constant/app_route.dart';
import 'package:frontend_admin/core/id/injection.dart';
import 'package:frontend_admin/core/services/app_service.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_admin/data/model/category/category_model.dart';
import 'package:frontend_admin/data/model/item/item_model.dart';
import 'package:frontend_admin/data/model/order/order_model.dart';
import 'package:frontend_admin/features/auth/feature/forget_password_features/forget_password/bloc/admin_forget_password_bloc.dart';
import 'package:frontend_admin/features/auth/feature/forget_password_features/forget_password/view/forget_password_view.dart';
import 'package:frontend_admin/features/auth/feature/forget_password_features/reset_password/view/reset_password_view.dart';
import 'package:frontend_admin/features/auth/feature/forget_password_features/success/bloc/admin_success_bloc.dart';
import 'package:frontend_admin/features/auth/feature/forget_password_features/success/view/success_view.dart';
import 'package:frontend_admin/features/auth/feature/forget_password_features/verfiy_code/bloc/admin_verfiy_code_bloc.dart';
import 'package:frontend_admin/features/auth/feature/forget_password_features/verfiy_code/view/admin_verfiy_code_view.dart';
import 'package:frontend_admin/features/auth/feature/login/bloc/admin_login_bloc.dart';
import 'package:frontend_admin/features/auth/feature/login/view/login_view.dart';
import 'package:frontend_admin/features/categories/crud/add/bloc/add_category_bloc.dart';
import 'package:frontend_admin/features/categories/crud/add/page/add_category_page.dart';
import 'package:frontend_admin/features/categories/crud/edit/bloc/edit_category_bloc.dart';
import 'package:frontend_admin/features/categories/crud/edit/page/edit_category_page.dart';
import 'package:frontend_admin/features/categories/crud/view/bloc/view_categories_bloc.dart';
import 'package:frontend_admin/features/categories/crud/view/page/view_categories_page.dart';
import 'package:frontend_admin/features/choose_language/view/admin_choose_language.dart';
import 'package:frontend_admin/features/home/bloc/home_bloc.dart';
import 'package:frontend_admin/features/home/view/home_view.dart';
import 'package:frontend_admin/features/items/crud/add/bloc/add_item_bloc.dart';
import 'package:frontend_admin/features/items/crud/add/page/add_item_page.dart';
import 'package:frontend_admin/features/items/crud/edit/bloc/edit_item_bloc.dart';
import 'package:frontend_admin/features/items/crud/edit/page/edit_item_page.dart';
import 'package:frontend_admin/features/items/crud/view/bloc/view_items_bloc.dart';
import 'package:frontend_admin/features/items/crud/view/page/view_items_page.dart';
import 'package:frontend_admin/features/orders/feature/archive/bloc/archive_bloc.dart';
import 'package:frontend_admin/features/orders/feature/archive/view/archive_view.dart';
import 'package:frontend_admin/features/orders/feature/details/bloc/order_details_bloc.dart';
import 'package:frontend_admin/features/orders/feature/details/view/details.dart';
import 'package:frontend_admin/features/orders/feature/pending/bloc/pending_bloc.dart';
import 'package:frontend_admin/features/orders/feature/pending/view/pending_view.dart';
import 'package:frontend_admin/features/orders/screen/bloc/order_screen_bloc.dart';
import 'package:frontend_admin/features/orders/screen/view/order_screen_view.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final AppService appService = AppService();
    String? step = appService.sharedPreferences.getString("step");

    String? finalRouteName = settings.name;

    // تطبيق منطق الـ Middleware عند الدخول للتطبيق
    if (finalRouteName == AppRoute.chooseLanguage) {
      if (step == "2") {
        finalRouteName = AppRoute.home;
      } else if (step == "1") {
        finalRouteName = AppRoute.login;
      }
    }

    switch (finalRouteName) {
      case AppRoute.chooseLanguage:
        return MaterialPageRoute(builder: (_) => const AdminChooseLanguage());

      case AppRoute.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<AdminLoginBloc>(),
            child: LoginView(),
          ),
        );

      case AppRoute.forgetPassword:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<AdminForgetPasswordBloc>(),
            child: ForgetPasswordView(),
          ),
        );
      case AppRoute.verifyCode:
        final email = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<AdminVerfiyCodeBloc>(),
            child: AdminVerfiyCodeView(email: email),
          ),
        );
      case AppRoute.resetPassword:
        final email = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<AdminForgetPasswordBloc>(),
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
                sl<AdminSuccessBloc>()..add(AdminSuccessEvent.started()),
            child: SuccessView(email: email!, password: password!),
          ),
        );

      case AppRoute.home:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<HomeBloc>(),
            child: HomeView(),
          ),
        );

      // Categories
      case AppRoute.viewCategories:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                sl<ViewCategoriesBloc>()
                  ..add(ViewCategoriesEvent.fetchCategories()),
            child: ViewCategoriesPage(),
          ),
        );
      case AppRoute.addCategory:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<AddCategoryBloc>(),
            child: AddCategoryPage(),
          ),
        );
      case AppRoute.editCategory:
        final categoryModel = settings.arguments as CategoryModel;

        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<EditCategoryBloc>(),
            child: EditCategoryPage(category: categoryModel),
          ),
        );

      // Items
      case AppRoute.viewItems:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                sl<ViewItemsBloc>()..add(ViewItemsEvent.fetchitems()),
            child: ViewItemsPage(),
          ),
        );
      case AppRoute.addItem:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<AddItemBloc>()..add(AddItemEvent.started()),
            child: AddItemPage(),
          ),
        );
      case AppRoute.editItem:
        final itemModel = settings.arguments as ItemModel;

        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<EditItemBloc>()
              ..add(
                EditItemEvent.started(
                  category: itemModel.category!,
                  active: itemModel.active!,
                ),
              ),
            child: EditItemPage(item: itemModel, active: itemModel.active!),
          ),
        );

      // Orders
      case AppRoute.orderScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<OrderScreenBloc>(),
            child: OrderScreenView(),
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

      default:
        return null;
    }
  }
}
