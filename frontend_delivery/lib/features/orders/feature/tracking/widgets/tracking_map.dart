import 'package:electronics_store_delivery/core/shared/custom_button.dart';
import 'package:electronics_store_delivery/data/model/address/address_model.dart';
import 'package:electronics_store_delivery/data/model/order/order_model.dart';
import 'package:electronics_store_delivery/features/orders/feature/tracking/bloc/tracking_bloc.dart';
import 'package:electronics_store_delivery/features/orders/feature/tracking/components/tracking_card_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ودجت احتواء وتمرير بيانات الخريطة والموقع
class TrackingMap extends StatelessWidget {
  // بيانات الطلب الواردة
  final OrderModel order;
  // خط العرض الحالي للمندوب
  final double? currentLat;
  // خط الطول الحالي للمندوب
  final double? currentLong;

  const TrackingMap({
    super.key,
    required this.order,
    this.currentLat,
    this.currentLong,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      // حواشي خارجية للودجت
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Expanded(
            // بطاقة عرض الخريطة والمواقع
            child: TrackingCardMap(
              // إمرارات الموقع الحالي للمندوب
              currentLat: currentLat,
              currentLong: currentLong,
              // إنشاء نموذج عنوان المستلم
              addressModel: AddressModel(
                id: order.addressId!,
                name: order.addressName!,
                city: order.addressCity!,
                street: order.addressStreet!,
                lat: order.addressLat!,
                long: order.addressLong!,
              ),
            ),
          ),
          SizedBox(height: 10),
          CustomButton(
            text: "تم",
            onPressed: () {
              context.read<TrackingBloc>().add(
                TrackingEvent.doneDelivery(order.id!),
              );
            },
          ),
        ],
      ),
    );
  }
}
