import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/function/alert_exit_app.dart';
import 'package:electronics_store/core/id/injection.dart';
import 'package:electronics_store/core/services/notification_service.dart';
import 'package:electronics_store/features/home/home_page/bloc/home_page_bloc.dart';
import 'package:electronics_store/features/home/home_page/view/home_page_view.dart';
import 'package:electronics_store/features/home/home_screen/bloc/home_screen_bloc.dart';
import 'package:electronics_store/features/home/notifications/bloc/notifications_bloc.dart';
import 'package:electronics_store/features/home/notifications/view/notifications_view.dart';
import 'package:electronics_store/features/home/offers/bloc/offers_bloc.dart';
import 'package:electronics_store/features/home/offers/view/offers_view.dart';
import 'package:electronics_store/features/home/settings_page/bloc/settings_page_bloc.dart';
import 'package:electronics_store/features/home/settings_page/view/settings_page_view.dart';
import 'package:electronics_store/features/home/home_screen/widgets/custom_bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  void initState() {
    super.initState();

    // // تأجيل استدعاء الإشعارات بعد اكتمال بناء الشاشة لتفادي استخدام context أثناء initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        // // 1. طلب الصلاحية هنا عندما يشاهد المستخدم الشاشة الرئيسية
        NotificationService.requestPermissions();

        // // 2. إعداد مستمعات الضغط على الإشعارات للتوجيه
        NotificationService.setupNotificationInteractions(context);
      }
    });
  }

  // UI Pages & Content
  List<Widget> get listPage => [
    BlocProvider(
      create: (context) =>
          sl<HomePageBloc>()..add(const HomePageEvent.started()),
      child: const HomePageView(),
    ),
    BlocProvider(
      create: (context) =>
          sl<NotificationsBloc>()..add(NotificationsEvent.started()),
      child: const NotificationsView(),
    ),
    BlocProvider(
      create: (context) =>
          sl<OffersBloc>()..add(const OffersEvent.loadOffers()),
      child: const OffersView(),
    ),
    BlocProvider(
      create: (context) => sl<SettingsPageBloc>(),
      child: const SettingsPageView(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoute.cart);
            },
            shape: const CircleBorder(),
            child: const Icon(
              Icons.shopping_basket_outlined,
              color: Colors.white,
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: CustomBottomAppBar(
            listPageLength: listPage.length,
            currentPage: state.currentPage,
            onTap: (index) {
              context.read<HomeScreenBloc>().add(
                HomeScreenEvent.pageChanged(index),
              );
            },
            lang: state.lang,
          ),
          body: PopScope(
            canPop: false,
            onPopInvokedWithResult: (didPop, result) {
              if (didPop) return;
              alertExitApp(context);
            },
            child: IndexedStack(index: state.currentPage, children: listPage),
          ),
        );
      },
    );
  }
}
