import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/features/home/home_page/bloc/home_page_bloc.dart';
import 'package:electronics_store/features/home/home_page/widgets/home_view.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:show_up_animation/show_up_animation.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageBloc, HomePageState>(
      listenWhen: (previous, current) =>
          current.maybeWhen(loggedOut: () => true, orElse: () => false),
      listener: (context, state) {
        state.maybeWhen(
          loggedOut: () async {
            FirebaseMessaging messaging = FirebaseMessaging.instance;
            await messaging.unsubscribeFromTopic("badrAbdullah");
            if (context.mounted) {
              Navigator.of(
                context,
                rootNavigator: true,
              ).pushNamedAndRemoveUntil(AppRoute.login, (route) => false);
            }
          },
          orElse: () {},
        );
      },
      buildWhen: (previous, current) => current.maybeWhen(
        initial: () => true,
        loading: () => true,
        loaded: (_, _, _, _) => true,
        noData: (_) => true,
        serverFailure: (_) => true,
        orElse: () => false,
      ),
      builder: (context, state) {
        return state.maybeWhen(
          // // إضافة مؤشر التحميل عند حالة loading أو initial
          loading: () => const AppLoadingWidget(),
          initial: () => const AppLoadingWidget(),
          serverFailure: (message) => AppErrorWidget(
            message: message,
            onRetry: () =>
                context.read<HomePageBloc>().add(const HomePageEvent.started()),
          ),
          noData: (message) => AppEmptyWidget(text: message),
          loaded: (lang, categories, items, settings) => ShowUpAnimation(
            delayStart: Duration(seconds: 1),
            animationDuration: Duration(seconds: 1),
            curve: Curves.bounceIn,
            direction: Direction.vertical,
            offset: 0.5,
            child: HomeView(
              lang: lang,
              categories: categories,
              items: items,
              settings: settings,
            ),
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
