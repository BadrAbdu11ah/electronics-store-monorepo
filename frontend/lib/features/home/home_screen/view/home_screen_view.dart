import 'package:electronics_store/core/id/injection.dart';
import 'package:electronics_store/features/home/home_page/bloc/home_page_bloc.dart';
import 'package:electronics_store/features/home/home_page/view/home_page_view.dart';
import 'package:electronics_store/features/home/home_screen/bloc/home_screen_bloc.dart';
import 'package:electronics_store/features/home/settings_page/bloc/settings_page_bloc.dart';
import 'package:electronics_store/features/home/settings_page/view/settings_page_view.dart';
import 'package:electronics_store/features/home/home_screen/widgets/custom_bottom_app_bar.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  // UI Pages & Content
  List<Widget> get listPage => [
    BlocProvider(
      create: (context) =>
          sl<HomePageBloc>()..add(const HomePageEvent.started()),
      child: HomePageView(),
    ),
    const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("This is Favorite Page"))],
    ),
    const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("This is Profile Page"))],
    ),
    BlocProvider(
      create: (context) => sl<SettingsPageBloc>(),
      child: SettingsPageView(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // controller.gotoCart();
            },
            shape: const CircleBorder(),
            child: Icon(Icons.shopping_basket_outlined, color: Colors.white),
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
          ),
          body: IndexedStack(index: state.currentPage, children: listPage),
        );
      },
    );
  }
}
