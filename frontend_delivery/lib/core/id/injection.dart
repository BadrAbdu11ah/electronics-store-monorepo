import 'package:electronics_store_delivery/api_endpoints.dart';
import 'package:electronics_store_delivery/core/services/api_service.dart';
import 'package:electronics_store_delivery/core/services/app_service.dart';
import 'package:electronics_store_delivery/core/services/location_service.dart';

import 'package:electronics_store_delivery/features/auth/data/delivery_auth_data.dart';
import 'package:electronics_store_delivery/features/auth/feature/forget_password_features/forget_password/bloc/delivery_forget_password_bloc.dart';
import 'package:electronics_store_delivery/features/auth/feature/forget_password_features/reset_password/bloc/delivery_reset_password_bloc.dart';
import 'package:electronics_store_delivery/features/auth/feature/forget_password_features/success/bloc/delivery_success_bloc.dart';
import 'package:electronics_store_delivery/features/auth/feature/forget_password_features/verfiy_code/bloc/delivery_verfiy_code_bloc.dart';
import 'package:electronics_store_delivery/features/auth/feature/login/bloc/delivery_login_bloc.dart';

import 'package:electronics_store_delivery/features/home/data/home_data.dart';
import 'package:electronics_store_delivery/features/home/home_screen/bloc/home_screen_bloc.dart';
import 'package:electronics_store_delivery/features/home/settings_page/bloc/settings_page_bloc.dart';

import 'package:electronics_store_delivery/features/orders/data/orders_data.dart';
import 'package:electronics_store_delivery/features/orders/feature/accepte/bloc/accepte_bloc.dart';
import 'package:electronics_store_delivery/features/orders/feature/archive/bloc/archive_bloc.dart';
import 'package:electronics_store_delivery/features/orders/feature/details/bloc/order_details_bloc.dart';
import 'package:electronics_store_delivery/features/orders/feature/pending/bloc/pending_bloc.dart';
import 'package:electronics_store_delivery/features/orders/feature/tracking/bloc/tracking_bloc.dart';

import 'package:get_it/get_it.dart';

final sl = GetIt.instance; // sl تعني Service Locator

Future<void> initGetIt() async {
  // 1. Services (الأدوات الأساسية)
  sl.registerLazySingleton(() => ApiService(baseUrl: ApiEndpoints.baseUrl));
  sl.registerLazySingleton(() => AppService());

  // 2. Data Sources / Repositories
  sl.registerLazySingleton(() => DeliveryAuthData(sl<ApiService>()));
  sl.registerLazySingleton(() => HomeData(sl<ApiService>()));

  sl.registerLazySingleton(() => OrdersData(sl<ApiService>()));
  sl.registerLazySingleton(() => LocationServiceImpl());

  // 3. Blocs

  // Auth Blocs
  sl.registerFactory(() => DeliveryLoginBloc(sl<DeliveryAuthData>()));

  // Forget Password Blocs
  sl.registerFactory(() => DeliveryForgetPasswordBloc(sl<DeliveryAuthData>()));
  sl.registerFactory(() => DeliveryVerfiyCodeBloc(sl<DeliveryAuthData>()));
  sl.registerFactory(() => DeliveryResetPasswordBloc(sl<DeliveryAuthData>()));
  sl.registerFactory(() => DeliverySuccessBloc());

  // Home
  sl.registerFactory(() => HomeScreenBloc(appService: sl<AppService>()));
  sl.registerFactory(() => SettingsPageBloc(authData: sl<DeliveryAuthData>()));

  // order
  sl.registerFactory(() => PendingBloc(sl<OrdersData>()));
  sl.registerFactory(() => AccepteBloc(sl<OrdersData>()));
  sl.registerFactory(() => ArchiveBloc(sl<OrdersData>()));
  sl.registerFactory(
    () => OrderDetailsBloc(
      appService: sl<AppService>(),
      ordersData: sl<OrdersData>(),
    ),
  );
  sl.registerFactory(
    () => TrackingBloc(
      locationService: sl<LocationServiceImpl>(),
      ordersData: sl<OrdersData>(),
    ),
  );
}
