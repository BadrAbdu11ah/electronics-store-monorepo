import 'package:electronics_store_delivery/core/function/alert_exit_app.dart';
import 'package:electronics_store_delivery/core/id/injection.dart';
import 'package:electronics_store_delivery/core/services/notification_service.dart';
import 'package:electronics_store_delivery/features/home/home_screen/bloc/home_screen_bloc.dart';

import 'package:electronics_store_delivery/features/home/home_screen/widgets/custom_bottom_app_bar.dart';
import 'package:electronics_store_delivery/features/home/settings_page/bloc/settings_page_bloc.dart';
import 'package:electronics_store_delivery/features/home/settings_page/view/settings_page_view.dart';
import 'package:electronics_store_delivery/features/orders/feature/accepte/bloc/accepte_bloc.dart';
import 'package:electronics_store_delivery/features/orders/feature/accepte/view/accepte_view.dart';
import 'package:electronics_store_delivery/features/orders/feature/pending/bloc/pending_bloc.dart';
import 'package:electronics_store_delivery/features/orders/feature/pending/view/pending_view.dart';
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

  List<Map<String, dynamic>> home = [
    {
      'page': BlocProvider(
        create: (context) =>
            sl<PendingBloc>()..add(const PendingEvent.fetchOrders()),
        child: const PendingView(),
      ),
      "titleBottomAr": "المنتظرة",
      "titleBottomEn": "Pending",
      "iconActive": Icons.pending_actions,
      "iconNotActive": Icons.pending_actions_outlined,
    },
    {
      'page': BlocProvider(
        create: (context) =>
            sl<AccepteBloc>()..add(const AccepteEvent.fetchOrders()),
        child: const AccepteView(),
      ),
      "titleBottomAr": "المقبولة",
      "titleBottomEn": "Accepted",
      "iconActive": Icons.verified_user,
      "iconNotActive": Icons.verified_user_outlined,
    },

    {
      'page': BlocProvider(
        create: (context) => sl<SettingsPageBloc>(),
        child: const SettingsPageView(),
      ),
      "titleBottomAr": "الإعدادات",
      "titleBottomEn": "Settings",
      "iconActive": Icons.settings,
      "iconNotActive": Icons.settings_outlined,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: CustomBottomAppBar(
            listPageLength: home.length,
            currentPage: state.currentPage,
            onTap: (index) {
              context.read<HomeScreenBloc>().add(
                HomeScreenEvent.pageChanged(index),
              );
            },
            lang: state.lang,
            home: home,
          ),
          body: PopScope(
            canPop: false,
            onPopInvokedWithResult: (didPop, result) {
              if (didPop) return;
              alertExitApp(context);
            },
            child: IndexedStack(
              index: state.currentPage,
              children: List.generate(
                home.length,
                (index) => home[index]["page"],
              ),
            ),
          ),
        );
      },
    );
  }
}
