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
import 'package:electronics_store/features/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance; // sl تعني Service Locator

Future<void> init() async {
  // 1. Services (الأدوات الأساسية)
  sl.registerLazySingleton(() => ApiService(baseUrl: ApiEndpoints.baseUrl));
  sl.registerLazySingleton(() => AppService());

  // 2. Data Sources / Repositories
  sl.registerLazySingleton(() => AuthData(sl<ApiService>()));

  // 3. Blocs

  // Auth Blocs
  sl.registerFactory(() => OnBoardingBloc(sl<AppService>()));
  sl.registerFactory(() => LoginBloc(sl<AuthData>()));
  sl.registerFactory(() => SignUpBloc(sl<AuthData>()));
  sl.registerFactory(() => VerfiyCodeSignUpBloc(sl<AuthData>()));
  sl.registerFactory(() => SuccessSignUpBloc());

  // Forget Password Blocs
  sl.registerFactory(() => ForgetPasswordBloc(sl<AuthData>()));
  sl.registerFactory(() => VerfiyCodePasswordBloc(sl<AuthData>()));
  sl.registerFactory(() => ResetPasswordBloc(sl<AuthData>()));
  sl.registerFactory(() => SuccessResetPasswordBloc());
}
