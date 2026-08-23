import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/model/order/order_model.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/orders/feature/tracking/bloc/tracking_bloc.dart';
import 'package:electronics_store/features/orders/feature/tracking/widgets/tracking_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// شاشة تتبع الطلب الرئيسية للمندوب
class TrackingView extends StatefulWidget {
  // بيانات الطلب المراد تتبعه
  final OrderModel order;
  const TrackingView({super.key, required this.order});

  @override
  State<TrackingView> createState() => _TrackingViewState();
}

class _TrackingViewState extends State<TrackingView> {
  @override
  void initState() {
    super.initState();
    // بدء إعداد التتبع وجلب الموقع المباشر عند بدء الشاشة
    context.read<TrackingBloc>().add(
      TrackingEvent.started(order: widget.order),
    );
    context.read<TrackingBloc>().add(const TrackingEvent.getCurrentLocation());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // شريط العنوان العلوى
      appBar: AppBar(
        // نص عنوان الصفحة
        title: Text(
          AppTranslations.translate(context, AppText.orderTrackingTitle),
        ),
      ),
      // الاستماع لحالة البلوك وبناء الواجهة
      body: BlocBuilder<TrackingBloc, TrackingState>(
        builder: (context, state) {
          return state.status.maybeWhen(
            // حالة التحميل
            loading: () => AppLoadingWidget(),
            // حالة الفشل وإظهار رسالة الخطأ
            serverFailure: (message) => AppErrorWidget(
              message: message,
              // زر إعادة المحاولة
              onRetry: () {
                context.read<TrackingBloc>().add(
                  TrackingEvent.started(order: widget.order),
                );
                context.read<TrackingBloc>().add(
                  const TrackingEvent.getCurrentLocation(),
                );
              },
            ),
            // حالة النجاح وتمرير الإحداثيات الحالية المباشرة
            loaded: () => TrackingMap(
              order: widget.order,
              // خط العرض القادم من البلوك
              currentLat: state.destLat,
              // خط الطول القادم من البلوك
              currentLong: state.destLong,
            ),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
