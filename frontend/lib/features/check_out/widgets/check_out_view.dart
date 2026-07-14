import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/core/constant/app_image_asset.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/check_out/bloc/check_out_bloc.dart';
import 'package:electronics_store/features/check_out/components/card_address_checkout.dart';
import 'package:electronics_store/features/check_out/components/card_delivery_type.dart';
import 'package:electronics_store/features/check_out/components/card_pyment_method.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckOutView extends StatelessWidget {
  final CheckOutState state;
  const CheckOutView({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          Text(
            AppTranslations.translate(context, AppText.choosePaymentMethod),
            style: TextStyle(
              color: AppColor.themeBlackColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          CardPymentMethod(
            onCard: () {
              context.read<CheckOutBloc>().add(
                CheckOutEvent.choosePymentMethod("0"),
              ); // 0 => cash
            },
            title: AppTranslations.translate(context, AppText.cash),
            active: state.paymentMethod == "0" ? true : false,
          ),
          SizedBox(height: 10),
          CardPymentMethod(
            onCard: () {
              context.read<CheckOutBloc>().add(
                CheckOutEvent.choosePymentMethod("1"),
              ); // 1 => payment card
            },
            title: AppTranslations.translate(context, AppText.paymentCards),
            active: state.paymentMethod == "1" ? true : false,
          ),
          SizedBox(height: 20),
          Text(
            AppTranslations.translate(context, AppText.chooseDeliveryType),
            style: TextStyle(
              color: AppColor.themeBlackColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              CardDeliveryType(
                onCard: () {
                  context.read<CheckOutBloc>().add(
                    CheckOutEvent.chooseDeliveryType("0"),
                  ); // 0 => Delivery
                },
                imageName: AppImageAsset.man,
                title: AppTranslations.translate(context, AppText.delivery),
                active: state.deliveryType == "0" ? true : false,
              ),
              SizedBox(width: 10),
              CardDeliveryType(
                onCard: () {
                  context.read<CheckOutBloc>().add(
                    CheckOutEvent.chooseDeliveryType("1"),
                  ); // Drive Thru
                },
                imageName: AppImageAsset.man,
                title: AppTranslations.translate(context, AppText.driveThru),
                active: state.deliveryType == "1" ? true : false,
              ),
            ],
          ),
          SizedBox(height: 20),
          if (state.deliveryType == "0")
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppTranslations.translate(context, AppText.shippingAddress),
                  style: TextStyle(
                    color: AppColor.themeBlackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                if (state.deliveryType == "0") ...[
                  Text(
                    AppTranslations.translate(context, AppText.shippingAddress),
                    style: TextStyle(
                      color: AppColor.themeBlackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),

                  state.addressStatus.when(
                    initial: () => SizedBox.shrink(),

                    loading: () => AppLoadingWidget(),

                    noData: (message) => AppEmptyWidget(text: message),

                    loaded: () {
                      return Column(
                        children: List.generate(state.addresses.length, (i) {
                          final address = state.addresses[i];
                          return CardAddressCheckout(
                            onCard: () {
                              context.read<CheckOutBloc>().add(
                                CheckOutEvent.chooseShippingAddress(
                                  address.id.toString(),
                                ),
                              );
                            },
                            title: "${address.name}",
                            body: "${address.city}, ${address.street}",
                            active: state.addressID == address.id.toString(),
                          );
                        }),
                      );
                    },
                  ),
                ],
              ],
            ),
        ],
      ),
    );
  }
}
