import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/auth/feature/login/bloc/login_bloc.dart';
import 'package:electronics_store/features/auth/feature/login/widgets/login_form.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  // خاص بإرسال الإشعارات
  Future<void> initFirebaseStuff() async {
    await myRequestPermissions();
    // await getToken();
  }

  // أخذ الرمز الخاص بالجهاز لإرسال الرسائل عليه
  // Future<void> getToken() async {
  //   String? myToken = await FirebaseMessaging.instance.getToken();
  //   print("================================");
  //   print("Token: $myToken");
  //   print("================================");
  // }

  // التأكد من أن الجهاز يقبل الإشعارات
  Future<void> myRequestPermissions() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
  }

  late TextEditingController email;
  late TextEditingController password;

  @override
  void initState() {
    email = TextEditingController();
    password = TextEditingController();
    initFirebaseStuff();
    super.initState();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.bgColorOnBoarding,
        title: Text(
          AppTranslations.translate(context, AppText.signIn),
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.normal),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          FocusScope.of(context).unfocus();
          state.maybeWhen(
            accountNotActive: () => AwesomeDialog(
              context: context,
              dialogType: DialogType.warning,
              animType: AnimType.rightSlide,
              title: AppTranslations.translate(context, AppText.warning),
              desc: AppTranslations.translate(
                context,
                AppText.accountNotActive,
              ),
              btnOkOnPress: () {
                context.read<LoginBloc>().add(
                  LoginEvent.resendCode(email: email.text),
                );
              },
              btnOkText: AppTranslations.translate(
                context,
                AppText.activateNow,
              ),
            ).show(),
            successResendCode: () => Navigator.pushNamed(
              context,
              AppRoute.verifyCodeSignUp,
              arguments: {"email": email.text},
            ),
            success: () => Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoute.homeScreen,
              (route) => false,
            ),
            failure: (errorMessage) =>
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(errorMessage),
                    backgroundColor: Colors.redAccent,
                  ),
                ),
            orElse: () {},
          );
        },
        buildWhen: (previous, current) {
          return current.maybeWhen(
            initial: () => true,
            loading: () => true,
            serverFailure: (_) => true,
            orElse: () => false,
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );

          return state.maybeWhen(
            serverFailure: (errorMessage) => AppErrorWidget(
              message: errorMessage,
              onRetry: () {
                context.read<LoginBloc>().add(const LoginEvent.reset());
              },
            ),
            orElse: () => LoginForm(
              isLoading: isLoading,
              email: email,
              password: password,
            ),
          );
        },
      ),
    );
  }
}
