import 'package:electronics_store/features/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/data/static/app_text/on_boarding_slider.dart';
import 'package:electronics_store/app_translations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final onBoardingBloc = context.read<OnBoardingBloc>();
    final list = onBoardingList(context);

    return BlocBuilder<OnBoardingBloc, OnBoardingState>(
      buildWhen: (previous, current) =>
          previous.currentPage != current.currentPage,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // SKIP
            InkWell(
              onTap: () => onBoardingBloc.add(const OnBoardingEvent.skip()),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Text(
                  AppTranslations.translate(context, AppText.skip),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),

            // Pagination Dots
            Row(
              children: List.generate(list.length, (index) {
                // مربع بخاصية التحريك
                return AnimatedContainer(
                  margin: const EdgeInsets.only(right: 5), // 5 إلى اليمين
                  duration: const Duration(milliseconds: 600), // زمن التحريك
                  height: 6, // الطول
                  width: state.currentPage == index
                      ? 15
                      : 6, // العرض يتمدد عند الاختيار
                  decoration: BoxDecoration(
                    color: AppColor.themeColor, // اللون
                    borderRadius: BorderRadius.circular(10), // الاستدارة
                  ),
                );
              }),
            ),

            // NEXT & FINISH
            InkWell(
              onTap: () => onBoardingBloc.add(
                OnBoardingEvent.nextPage(listLength: list.length),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Text(
                  state.currentPage != onBoardingList(context).length - 1
                      ? AppTranslations.translate(context, AppText.next)
                      : AppTranslations.translate(context, AppText.finish),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColor.themeColor,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
