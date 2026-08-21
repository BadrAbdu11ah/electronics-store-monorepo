import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/localization/bloc/localization_bloc.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/choose_language/widgets/custom_button_lang.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseLanguage extends StatelessWidget {
  const ChooseLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ---------- Choose Language ----------
            Text(
              AppTranslations.translate(context, AppText.titleChooseLanguage),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 10),

            // Arabic
            CustomButtonLang(
              lang: AppTranslations.translate(context, AppText.arabic),
              onPressed: () {
                context.read<LocalizationBloc>().add(
                  LocalizationEvent.changeLocalization("ar"),
                );
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRoute.onBoarding,
                  (route) => false,
                );
              },
            ),

            // English
            CustomButtonLang(
              lang: AppTranslations.translate(context, AppText.english),
              onPressed: () {
                context.read<LocalizationBloc>().add(
                  LocalizationEvent.changeLocalization("en"),
                );
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRoute.onBoarding,
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
