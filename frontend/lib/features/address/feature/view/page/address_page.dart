import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/features/address/feature/view/bloc/address_view_bloc.dart';
import 'package:electronics_store/features/address/feature/view/widgets/address_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoute.addressAdd);
          },
          shape: const CircleBorder(),
          child: Icon(Icons.add, color: AppColor.bgColorOnBoarding, size: 35),
        ),
      ),
      appBar: AppBar(title: Text("العناوين")),
      body: BlocConsumer<AddressViewBloc, AddressViewState>(
        listenWhen: (previous, current) =>
            previous.deleteState != current.deleteState,
        // كتابة رسائل الحذف
        listener: (context, state) {
          state.deleteState.whenOrNull(
            success: (message) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message), backgroundColor: Colors.green),
            ),
            failure: (message) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message), backgroundColor: Colors.red),
            ),
          );
        },
        buildWhen: (previous, current) => previous.status != current.status,
        // التعامل مع الحالات المختلفة
        builder: (context, state) {
          return state.status.maybeWhen(
            loading: () => AppLoadingWidget(),
            serverFailure: (message) => AppErrorWidget(
              message: message,
              onRetry: () => context.read<AddressViewBloc>().add(
                AddressViewEvent.started(),
              ),
            ),
            noData: (message) => AppEmptyWidget(text: message),
            loaded: () => AddressListView(state: state),
            orElse: () => SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
