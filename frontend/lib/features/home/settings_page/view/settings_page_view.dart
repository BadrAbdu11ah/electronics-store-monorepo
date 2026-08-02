import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/home/settings_page/bloc/settings_page_bloc.dart';
import 'package:electronics_store/features/home/settings_page/widgets/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPageView extends StatefulWidget {
  const SettingsPageView({super.key});

  @override
  State<SettingsPageView> createState() => _SettingsPageViewState();
}

class _SettingsPageViewState extends State<SettingsPageView> {
  // // متغير التنبيهات
  bool notification = true;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> options = [
      {
        "title": AppTranslations.translate(
          context,
          AppText.disableNotification,
        ),
        "icon": Switch(
          value: notification,
          onChanged: (bool val) {
            setState(() {
              notification = val;
            });
          },
        ),
        "onTap": () {},
      },
      {
        "title": AppTranslations.translate(context, AppText.address),
        "icon": const Icon(Icons.location_on_outlined),
        "onTap": () {
          Navigator.pushNamed(context, AppRoute.addressView);
        },
      },
      {
        "title": AppTranslations.translate(context, AppText.ordersTitle),
        "icon": const Icon(Icons.shopping_cart_sharp),
        "onTap": () {
          Navigator.pushNamed(context, AppRoute.ordersPending);
        },
      },
      {
        "title": AppTranslations.translate(context, AppText.orderArchiveTitle),
        "icon": const Icon(Icons.archive_rounded),
        "onTap": () {
          Navigator.pushNamed(context, AppRoute.ordersArchive);
        },
      },

      {
        "title": AppTranslations.translate(context, AppText.contactUs),
        "icon": const Icon(Icons.phone_callback_outlined),
        "onTap": () async {
          final Uri url = Uri.parse("tel:+966592494213");
          if (await canLaunchUrl(url)) {
            await launchUrl(url, mode: LaunchMode.externalApplication);
          }
        },
      },
      {
        "title": AppTranslations.translate(context, AppText.whatsapp),
        "icon": const Icon(Icons.chat_bubble_outline),
        "onTap": () async {
          final Uri url = Uri.parse("https://wa.me/+966592494213");
          if (await canLaunchUrl(url)) {
            await launchUrl(url, mode: LaunchMode.externalApplication);
          }
        },
      },
      {
        "title": AppTranslations.translate(context, AppText.aboutUs),
        "icon": const Icon(Icons.info_outlined),
        "onTap": () async {
          final Uri url = Uri.parse(
            "https://tiny-sound-7e91.badrhaje2.workers.dev/",
          );
          if (await canLaunchUrl(url)) {
            await launchUrl(url, mode: LaunchMode.externalApplication);
          }
        },
      },
      {
        "title": AppTranslations.translate(context, AppText.logout),
        "icon": const Icon(Icons.logout_outlined),
        "onTap": () {
          context.read<SettingsPageBloc>().add(
            const SettingsPageEvent.logout(),
          );
        },
      },
    ];

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
          loading: () => const AppLoadingWidget(),
          orElse: () => SettingsView(options: options),
        );
      },
    );
  }
}
