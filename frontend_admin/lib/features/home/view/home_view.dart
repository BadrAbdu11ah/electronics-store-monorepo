import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_admin/core/constant/app_image_asset.dart';
import 'package:frontend_admin/core/constant/app_route.dart';
import 'package:frontend_admin/core/function/alert_exit_app.dart';
import 'package:frontend_admin/core/shared/handling_data_view.dart';
import 'package:frontend_admin/features/home/bloc/home_bloc.dart';
import 'package:frontend_admin/features/home/widgets/card_home_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        alertExitApp(context);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("الرئيسية"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                context.read<HomeBloc>().add(const HomeEvent.logout());
              },
              icon: Icon(Icons.logout),
            ),
          ],
        ),
        body: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            state.maybeWhen(
              logoutSuccess: () {
                Navigator.pushReplacementNamed(context, AppRoute.login);
              },
              logoutFailure: (message) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(message)));
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => AppLoadingWidget(),
              orElse: () => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    GridView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisExtent: 170,
                      ),
                      children: [
                        CardHomeView(
                          onTap: () {},
                          imageName: AppImageAsset.aftar,
                          title: 'المستخدمين',
                        ),
                        CardHomeView(
                          onTap: () {},
                          imageName: AppImageAsset.notification,
                          title: 'الإشعارات',
                        ),
                        CardHomeView(
                          onTap: () {
                            Navigator.pushNamed(context, AppRoute.viewItems);
                          },
                          imageName: AppImageAsset.product,
                          title: 'المنتجات',
                        ),
                        CardHomeView(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              AppRoute.viewCategories,
                            );
                          },
                          imageName: AppImageAsset.categories,
                          title: 'الأقسام',
                        ),
                        CardHomeView(
                          onTap: () {
                            Navigator.pushNamed(context, AppRoute.orderScreen);
                          },
                          imageName: AppImageAsset.order,
                          title: 'الطلبات',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
