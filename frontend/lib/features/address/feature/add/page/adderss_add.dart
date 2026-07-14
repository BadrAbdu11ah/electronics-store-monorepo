import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/features/address/feature/add/bloc/address_add_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdderssAdd extends StatelessWidget {
  const AdderssAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("إضافة عنوان")),
      body: BlocBuilder<AddressAddBloc, AddressAddState>(
        builder: (context, state) {
          return state.status.when(
            initial: () => SizedBox.shrink(),
            serverFailure: (message) => AppErrorWidget(
              message: message,
              onRetry: () =>
                  context.read<AddressAddBloc>().add(AddressAddEvent.started()),
            ),
            loading: () => AppLoadingWidget(),
            loaded: () => Column(
              children: [
                Spacer(),
                Expanded(
                  child: Text(
                    "تم أخذ الموقع الحالي\nسيتم عرض الخريطة لاحقا",
                    textAlign: TextAlign.center,
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                  child: MaterialButton(
                    height: 50,
                    textColor: AppColor.bgColorOnBoarding,
                    color: AppColor.themeColor,
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        AppRoute.addressAddDetails,
                        arguments: {"lat": state.lat, "long": state.long},
                      );
                    },
                    child: Text(
                      "تفاصيل العنوان",
                      style: TextStyle(fontSize: 20),
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
