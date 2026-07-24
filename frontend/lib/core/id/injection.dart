import 'package:electronics_store/api_endpoints.dart';
import 'package:electronics_store/core/services/api_service.dart';
import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/core/services/location_service.dart';
import 'package:electronics_store/features/address/data/address_data.dart';
import 'package:electronics_store/features/address/feature/add/bloc/address_add_bloc.dart';
import 'package:electronics_store/features/address/feature/add_details/bloc/address_add_details_bloc.dart';
import 'package:electronics_store/features/address/feature/edit/bloc/address_edit_bloc.dart';
import 'package:electronics_store/features/address/feature/view/bloc/address_view_bloc.dart';
import 'package:electronics_store/features/auth/data/auth_data.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/forget_password/bloc/forget_password_bloc.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/reset_password/bloc/reset_password_bloc.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/success_reset_password/bloc/success_reset_password_bloc.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/verfiy_code_password/bloc/verfiy_code_password_bloc.dart';
import 'package:electronics_store/features/auth/feature/login/bloc/login_bloc.dart';
import 'package:electronics_store/features/auth/feature/sign_up_features/sign_up/bloc/sign_up_bloc.dart';
import 'package:electronics_store/features/auth/feature/sign_up_features/success_sign_up/bloc/success_sign_up_bloc.dart';
import 'package:electronics_store/features/auth/feature/sign_up_features/verfiy_code_sign_up/bloc/verfiy_code_sign_up_bloc.dart';
import 'package:electronics_store/features/cart/bloc/cart_bloc.dart';
import 'package:electronics_store/features/cart/data/cart_data.dart';
import 'package:electronics_store/features/check_out/bloc/check_out_bloc.dart';
import 'package:electronics_store/features/check_out/data/checkout_data.dart';
import 'package:electronics_store/features/favorite/bloc/favorite_bloc.dart';
import 'package:electronics_store/features/favorite/data/favorite_data.dart';
import 'package:electronics_store/features/home/data/home_data.dart';
import 'package:electronics_store/features/home/home_page/bloc/home_page_bloc.dart';
import 'package:electronics_store/features/home/home_screen/bloc/home_screen_bloc.dart';
import 'package:electronics_store/features/home/settings_page/bloc/settings_page_bloc.dart';
import 'package:electronics_store/features/items_feature/data/item_data.dart';
import 'package:electronics_store/features/items_feature/items/bloc/items_bloc.dart';
import 'package:electronics_store/features/items_feature/items_details/bloc/items_details_bloc.dart';
import 'package:electronics_store/features/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:electronics_store/features/orders/data/orders_data.dart';
import 'package:electronics_store/features/orders/feature/details/bloc/order_details_bloc.dart';
import 'package:electronics_store/features/orders/feature/pending/bloc/pending_bloc.dart';
import 'package:electronics_store/features/search/data/search_data.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance; // sl تعني Service Locator

Future<void> init() async {
  // 1. Services (الأدوات الأساسية)
  sl.registerLazySingleton(() => ApiService(baseUrl: ApiEndpoints.baseUrl));
  sl.registerLazySingleton(() => AppService());

  // 2. Data Sources / Repositories
  sl.registerLazySingleton(() => AuthData(sl<ApiService>()));
  sl.registerLazySingleton(() => HomeData(sl<ApiService>()));
  sl.registerLazySingleton(() => SearchData(sl<ApiService>()));
  sl.registerLazySingleton(() => ItemData(sl<ApiService>()));
  sl.registerLazySingleton(() => FavoriteData(sl<ApiService>()));
  sl.registerLazySingleton(() => CartData(sl<ApiService>()));
  sl.registerLazySingleton(() => AddressData(sl<ApiService>()));
  sl.registerLazySingleton(() => CheckoutData(sl<ApiService>()));
  sl.registerLazySingleton(() => OrdersData(sl<ApiService>()));
  sl.registerLazySingleton(() => LocationServiceImpl());

  // 3. Blocs

  // Auth Blocs
  sl.registerFactory(() => OnBoardingBloc(sl<AppService>()));
  sl.registerFactory(() => LoginBloc(sl<AuthData>(), sl<AppService>()));
  sl.registerFactory(() => SignUpBloc(sl<AuthData>()));
  sl.registerFactory(() => VerfiyCodeSignUpBloc(sl<AuthData>()));
  sl.registerFactory(() => SuccessSignUpBloc(appService: sl<AppService>()));

  // Forget Password Blocs
  sl.registerFactory(() => ForgetPasswordBloc(sl<AuthData>()));
  sl.registerFactory(() => VerfiyCodePasswordBloc(sl<AuthData>()));
  sl.registerFactory(() => ResetPasswordBloc(sl<AuthData>()));
  sl.registerFactory(() => SuccessResetPasswordBloc());

  // Home
  sl.registerFactory(() => HomeScreenBloc());
  sl.registerFactory(
    () => HomePageBloc(homeData: sl<HomeData>(), appService: sl<AppService>()),
  );
  sl.registerFactory(() => SettingsPageBloc(appService: sl<AppService>()));

  // Items
  sl.registerFactory(
    () => ItemsBloc(
      itemsData: sl<ItemData>(),
      favoriteData: sl<FavoriteData>(),
      appService: sl<AppService>(),
    ),
  );
  sl.registerFactory(
    () => ItemsDetailsBloc(
      appService: sl<AppService>(),
      cartData: sl<CartData>(),
    ),
  );
  sl.registerFactory(
    () => CartBloc(appService: sl<AppService>(), cartData: sl<CartData>()),
  );
  sl.registerFactory(
    () => FavoriteBloc(
      appService: sl<AppService>(),
      favoriteData: sl<FavoriteData>(),
    ),
  );
  // address
  sl.registerFactory(() => AddressViewBloc(sl<AddressData>()));
  sl.registerFactory(() => AddressAddBloc(sl<LocationServiceImpl>()));
  sl.registerFactory(() => AddressAddDetailsBloc(sl<AddressData>()));
  sl.registerFactory(() => AddressEditBloc(sl<AddressData>()));

  //checkout
  sl.registerFactory(
    () => CheckOutBloc(
      addressData: sl<AddressData>(),
      checkoutData: sl<CheckoutData>(),
    ),
  );

  // order
  sl.registerFactory(() => PendingBloc(sl<OrdersData>()));
  sl.registerFactory(
    () => OrderDetailsBloc(
      locationService: sl<LocationServiceImpl>(),
      appService: sl<AppService>(),
      ordersData: sl<OrdersData>(),
    ),
  );
}
