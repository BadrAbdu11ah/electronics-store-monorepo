import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/features/orders/feature/details/bloc/order_details_bloc.dart';
import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/orders/feature/details/components/card_orders_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTranslations.translate(context, AppText.orderDetailsTitle),
        ),
      ),
      body: BlocBuilder<OrderDetailsBloc, OrderDetailsState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.all(15),
            child: ListView(
              children: [
                CardOrdersDetails(
                  cartItems: state.cartItems,
                  order: state.order,
                  lang: state.lang,
                ),
                SizedBox(height: 10),
                if (state.addressModel != null)
                  Card(
                    child: ListTile(
                      title: Text(
                        AppTranslations.translate(
                          context,
                          AppText.shippingAddress,
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColor.themeBlackColor,
                        ),
                      ),
                      subtitle: Text(
                        "${state.addressModel!.city}, ${state.addressModel!.street}",
                      ),
                    ),
                  ),
                SizedBox(height: 10),
                if (state.addressModel != null)
                  Card(
                    child: SizedBox(
                      height: 300,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppTranslations.translate(
                              context,
                              AppText.mapLater,
                            ),
                          ),
                          SizedBox(height: 10),
                          if (state.position == null)
                            MaterialButton(
                              color: AppColor.themeColor,
                              textColor: AppColor.bgColorOnBoarding,
                              onPressed: () {
                                context.read<OrderDetailsBloc>().add(
                                  OrderDetailsEvent.getCurrentPositionApp(),
                                );
                              },
                              child: Text(
                                AppTranslations.translate(
                                  context,
                                  AppText.getCurrentLocation,
                                ),
                              ),
                            ),
                          if (state.position != null)
                            Text(
                              'lat: ${state.position!.latitude}\nlong: ${state.position!.longitude}',
                            ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
