import 'package:electronics_store/data/model/address/address_model.dart';
import 'package:electronics_store/data/model/cart/cart_model.dart';
import 'package:electronics_store/data/model/order/order_model.dart';
import 'package:electronics_store/features/orders/feature/details/components/card_map_later.dart';
import 'package:electronics_store/features/orders/feature/details/components/card_orders_details.dart';
import 'package:electronics_store/features/orders/feature/details/components/card_shipping_address.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  final List<CartModel> cartItems;
  final OrderModel order;
  final String lang;
  const DetailsView({
    super.key,
    required this.cartItems,
    required this.order,
    required this.lang,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: ListView(
        children: [
          CardOrdersDetails(cartItems: cartItems, order: order, lang: lang),
          SizedBox(height: 10),
          if (order.type == 0)
            Column(
              children: [
                CardShippingAddress(
                  addressModel: AddressModel(
                    id: order.addressId!,
                    name: order.addressName!,
                    city: order.addressCity!,
                    street: order.addressStreet!,
                    lat: order.addressLat!,
                    long: order.addressLong!,
                  ),
                ),
                SizedBox(height: 10),
                CardMapLater(
                  addressModel: AddressModel(
                    id: order.addressId!,
                    name: order.addressName!,
                    city: order.addressCity!,
                    street: order.addressStreet!,
                    lat: order.addressLat!,
                    long: order.addressLong!,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
