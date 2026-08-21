import 'package:frontend_admin/core/id/injection.dart';
import 'package:frontend_admin/core/services/notification_service.dart';
import 'package:frontend_admin/features/orders/feature/archive/bloc/archive_bloc.dart';
import 'package:frontend_admin/features/orders/feature/archive/view/archive_view.dart';
import 'package:frontend_admin/features/orders/screen/bloc/order_screen_bloc.dart';

import 'package:frontend_admin/features/orders/screen/widgets/custom_bottom_app_bar.dart';

import 'package:frontend_admin/features/orders/feature/accepte/bloc/accepte_bloc.dart';
import 'package:frontend_admin/features/orders/feature/accepte/view/accepte_view.dart';
import 'package:frontend_admin/features/orders/feature/pending/bloc/pending_bloc.dart';
import 'package:frontend_admin/features/orders/feature/pending/view/pending_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderScreenView extends StatefulWidget {
  const OrderScreenView({super.key});

  @override
  State<OrderScreenView> createState() => _OrderScreenViewState();
}

class _OrderScreenViewState extends State<OrderScreenView> {
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
        create: (context) =>
            sl<ArchiveBloc>()..add(const ArchiveEvent.fetchOrders()),
        child: const ArchiveView(),
      ),
      "titleBottomAr": "الأرشيف",
      "titleBottomEn": "Archive",
      "iconActive": Icons.archive,
      "iconNotActive": Icons.archive_outlined,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderScreenBloc, OrderScreenState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: CustomBottomAppBar(
            listPageLength: home.length,
            currentPage: state.currentPage,
            onTap: (index) {
              context.read<OrderScreenBloc>().add(
                OrderScreenEvent.pageChanged(index),
              );
            },
            lang: state.lang,
            home: home,
          ),
          body: IndexedStack(
            index: state.currentPage,
            children: List.generate(
              home.length,
              (index) => home[index]["page"],
            ),
          ),
        );
      },
    );
  }
}
