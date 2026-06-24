import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/home/settings_page/bloc/settings_page_bloc.dart';
import 'package:electronics_store/features/home/settings_page/widgets/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPageView extends StatefulWidget {
  const SettingsPageView({super.key});

  @override
  State<SettingsPageView> createState() => _SettingsPageViewState();
}

class _SettingsPageViewState extends State<SettingsPageView> {
  // Settings Properties
  bool notification = true;
  late List<Map<String, dynamic>> options;

  @override
  void initState() {
    options = [
      {
        "title": AppTranslations.translate(
          context,
          AppText.disableNotification,
        ),
        "icon": Switch(value: notification, onChanged: (bool val) {}),
        "onTap": () {},
      },
      {
        "title": AppTranslations.translate(context, AppText.address),
        "icon": Icon(Icons.location_on_outlined),
        "onTap": () {
          Navigator.pushNamed(context, AppRoute.addressView);
        },
      },
      {
        "title": AppTranslations.translate(context, AppText.aboutUs),
        "icon": Icon(Icons.info_outlined),
        "onTap": () {},
      },
      {
        "title": AppTranslations.translate(context, AppText.contactUs),
        "icon": Icon(Icons.phone_callback_outlined),
        "onTap": () {},
      },
      {
        "title": AppTranslations.translate(context, AppText.logout),
        "icon": Icon(Icons.logout_outlined),
        "onTap": () {
          context.read<SettingsPageBloc>().add(SettingsPageEvent.logout());
        },
      },
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingsPageBloc, SettingsPageState>(
      listenWhen: (previous, current) =>
          current.maybeWhen(loggedOut: () => true, orElse: () => false),
      listener: (context, state) {
        state.whenOrNull(
          loggedOut: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoute.login,
              (route) => false,
            );
          },
        );
      },
      buildWhen: (previous, current) =>
          current.maybeWhen(loading: () => true, orElse: () => false),
      builder: (BuildContext context, SettingsPageState state) {
        return state.maybeWhen(
          loading: () => AppLoadingWidget(),
          orElse: () => SettingsView(options: options),
        );
      },
    );
  }
}
