import 'package:frontend_admin/api_endpoints.dart';
import 'package:frontend_admin/core/services/api_service.dart';
import 'package:frontend_admin/core/services/app_service.dart';
import 'package:frontend_admin/core/services/location_service.dart';

import 'package:frontend_admin/features/auth/data/admin_auth_data.dart';
import 'package:frontend_admin/features/auth/feature/forget_password_features/forget_password/bloc/admin_forget_password_bloc.dart';
import 'package:frontend_admin/features/auth/feature/forget_password_features/reset_password/bloc/admin_reset_password_bloc.dart';
import 'package:frontend_admin/features/auth/feature/forget_password_features/success/bloc/admin_success_bloc.dart';
import 'package:frontend_admin/features/auth/feature/forget_password_features/verfiy_code/bloc/admin_verfiy_code_bloc.dart';
import 'package:frontend_admin/features/auth/feature/login/bloc/admin_login_bloc.dart';
import 'package:frontend_admin/features/categories/crud/add/bloc/add_category_bloc.dart';
import 'package:frontend_admin/features/categories/crud/edit/bloc/edit_category_bloc.dart';
import 'package:frontend_admin/features/categories/crud/view/bloc/view_categories_bloc.dart';
import 'package:frontend_admin/features/categories/data/categories_data.dart';
import 'package:frontend_admin/features/home/bloc/home_bloc.dart';
import 'package:frontend_admin/features/items/crud/add/bloc/add_item_bloc.dart';
import 'package:frontend_admin/features/items/crud/edit/bloc/edit_item_bloc.dart';
import 'package:frontend_admin/features/items/crud/view/bloc/view_items_bloc.dart';
import 'package:frontend_admin/features/items/data/items_data.dart';

import 'package:frontend_admin/features/orders/data/orders_data.dart';
import 'package:frontend_admin/features/orders/feature/accepte/bloc/accepte_bloc.dart';
import 'package:frontend_admin/features/orders/feature/archive/bloc/archive_bloc.dart';
import 'package:frontend_admin/features/orders/feature/details/bloc/order_details_bloc.dart';
import 'package:frontend_admin/features/orders/feature/pending/bloc/pending_bloc.dart';
import 'package:frontend_admin/features/orders/screen/bloc/order_screen_bloc.dart';

import 'package:get_it/get_it.dart';

final sl = GetIt.instance; // sl تعني Service Locator

Future<void> initGetIt() async {
  // 1. Services (الأدوات الأساسية)
  sl.registerLazySingleton(() => ApiService(baseUrl: ApiEndpoints.baseUrl));
  sl.registerLazySingleton(() => AppService());

  // 2. Data Sources / Repositories

  sl.registerLazySingleton(() => LocationServiceImpl());
  sl.registerLazySingleton(() => AdminAuthData(sl<ApiService>()));
  sl.registerLazySingleton(() => OrdersData(sl<ApiService>()));
  sl.registerLazySingleton(() => CategoriesData(sl<ApiService>()));
  sl.registerLazySingleton(() => ItemsData(sl<ApiService>()));

  // 3. Blocs

  // Auth Blocs
  sl.registerFactory(() => AdminLoginBloc(sl<AdminAuthData>()));

  // Forget Password Blocs
  sl.registerFactory(() => AdminForgetPasswordBloc(sl<AdminAuthData>()));
  sl.registerFactory(() => AdminVerfiyCodeBloc(sl<AdminAuthData>()));
  sl.registerFactory(() => AdminResetPasswordBloc(sl<AdminAuthData>()));
  sl.registerFactory(() => AdminSuccessBloc());

  // Home
  sl.registerFactory(() => HomeBloc(adminAuthData: sl<AdminAuthData>()));

  // categories
  sl.registerFactory(() => ViewCategoriesBloc(sl<CategoriesData>()));
  sl.registerFactory(() => AddCategoryBloc(sl<CategoriesData>()));
  sl.registerFactory(() => EditCategoryBloc(sl<CategoriesData>()));

  // items
  sl.registerFactory(() => ViewItemsBloc(sl<ItemsData>()));
  sl.registerFactory(
    () => AddItemBloc(
      categoriesData: sl<CategoriesData>(),
      itemsData: sl<ItemsData>(),
    ),
  );
  sl.registerFactory(
    () => EditItemBloc(
      itemsData: sl<ItemsData>(),
      categoriesData: sl<CategoriesData>(),
    ),
  );

  // order
  sl.registerFactory(() => OrderScreenBloc(appService: sl<AppService>()));
  sl.registerFactory(() => PendingBloc(sl<OrdersData>()));
  sl.registerFactory(() => AccepteBloc(sl<OrdersData>()));
  sl.registerFactory(() => ArchiveBloc(sl<OrdersData>()));
  sl.registerFactory(
    () => OrderDetailsBloc(
      appService: sl<AppService>(),
      ordersData: sl<OrdersData>(),
    ),
  );
}
