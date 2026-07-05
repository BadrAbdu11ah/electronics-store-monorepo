import 'package:electronics_store/features/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:electronics_store/data/static/app_text/on_boarding_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSliderOnBoarding extends StatelessWidget {
  final PageController pageController;
  const CustomSliderOnBoarding({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    final onBoardingBloc = context.read<OnBoardingBloc>();
    final screenWidth = MediaQuery.sizeOf(context).width;
    final list = onBoardingList(context);

    return BlocBuilder<OnBoardingBloc, OnBoardingState>(
      buildWhen: (previous, current) =>
          previous.currentPage != current.currentPage,
      builder: (context, state) {
        return PageView.builder(
          // الوصول للمتحكم من الـ Bloc مباشرة وليس من الـ State
          controller: pageController,
          onPageChanged: (value) =>
              onBoardingBloc.add(OnBoardingEvent.pageChanged(index: value)),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center, // التوسيط العمودي
              children: [
                Image.asset(
                  onBoardingList(context)[index].image,
                  height: screenWidth * 0.7,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 40),
                Text(
                  onBoardingList(context)[index].title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    list[index].body,
                    textAlign: TextAlign.center,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(height: 1.5),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
