import 'package:electronics_store/api_endpoints.dart';
import 'package:electronics_store/core/services/api_service.dart';
import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/features/auth/data/auth_data.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/forget_password/bloc/forget_password_bloc.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/reset_password/bloc/reset_password_bloc.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/success_reset_password/bloc/success_reset_password_bloc.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/verfiy_code_password/bloc/verfiy_code_password_bloc.dart';
import 'package:electronics_store/features/auth/feature/login/bloc/login_bloc.dart';
import 'package:electronics_store/features/auth/feature/sign_up_features/sign_up/bloc/sign_up_bloc.dart';
import 'package:electronics_store/features/auth/feature/sign_up_features/success_sign_up/bloc/success_sign_up_bloc.dart';
import 'package:electronics_store/features/auth/feature/sign_up_features/verfiy_code_sign_up/bloc/verfiy_code_sign_up_bloc.dart';
import 'package:electronics_store/features/cart/data/cart_data.dart';
import 'package:electronics_store/features/favorite/data/favorite_data.dart';
import 'package:electronics_store/features/home/data/home_data.dart';
import 'package:electronics_store/features/home/home_page/bloc/home_page_bloc.dart';
import 'package:electronics_store/features/home/home_screen/bloc/home_screen_bloc.dart';
import 'package:electronics_store/features/home/settings_page/bloc/settings_page_bloc.dart';
import 'package:electronics_store/features/items_feature/data/items_data.dart';
import 'package:electronics_store/features/items_feature/items/bloc/items_bloc.dart';
import 'package:electronics_store/features/items_feature/items_details/bloc/items_details_bloc.dart';
import 'package:electronics_store/features/on_boarding/bloc/on_boarding_bloc.dart';
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
  sl.registerLazySingleton(() => ItemsData(sl<ApiService>()));
  sl.registerLazySingleton(() => FavoriteData(sl<ApiService>()));
  sl.registerLazySingleton(() => CartData(sl<ApiService>()));

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
      itemsData: sl<ItemsData>(),
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
}
