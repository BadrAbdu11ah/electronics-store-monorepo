import "package:electronics_store/core/constant/app_color.dart";
import "package:electronics_store/core/constant/app_route.dart";
import "package:electronics_store/features/on_boarding/bloc/on_boarding_bloc.dart";
import "package:electronics_store/features/on_boarding/widgets/custom_dot_controller.dart";
import "package:electronics_store/features/on_boarding/widgets/custom_slider.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColorOnBoarding,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: BlocListener<OnBoardingBloc, OnBoardingState>(
            listenWhen: (previous, current) =>
                previous.status != current.status ||
                previous.currentPage != current.currentPage,
            listener: (context, state) {
              state.status.maybeWhen(
                navigateToLogin: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    AppRoute.login,
                    (route) => false,
                  );
                },
                orElse: () {},
              );
              pageController.animateToPage(
                state.currentPage,
                duration: const Duration(milliseconds: 900),
                curve: Curves.easeInOut,
              );
            },
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: CustomSliderOnBoarding(pageController: pageController),
                ),
                Expanded(child: const CustomDotControllerOnBoarding()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
