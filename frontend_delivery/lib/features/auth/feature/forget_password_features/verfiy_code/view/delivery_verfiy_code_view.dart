import 'package:electronics_store_delivery/app_translations.dart';
import 'package:electronics_store_delivery/core/constant/app_route.dart';
import 'package:electronics_store_delivery/core/shared/handling_data_view.dart';
import 'package:electronics_store_delivery/data/static/app_text.dart';
import 'package:electronics_store_delivery/features/auth/feature/forget_password_features/verfiy_code/bloc/delivery_verfiy_code_bloc.dart';
import 'package:electronics_store_delivery/features/auth/feature/forget_password_features/verfiy_code/widgets/delivery_verfiy_code_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeliveryVerfiyCodeView extends StatefulWidget {
  final String email;

  const DeliveryVerfiyCodeView({super.key, required this.email});

  @override
  State<DeliveryVerfiyCodeView> createState() => _DeliveryVerfiyCodeViewState();
}

class _DeliveryVerfiyCodeViewState extends State<DeliveryVerfiyCodeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTranslations.translate(context, AppText.verifyCodeTitle),
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.normal),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),

      body: BlocConsumer<DeliveryVerfiyCodeBloc, DeliveryVerfiyCodeState>(
        listener: (context, state) {
          state.maybeWhen(
            success: () => Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoute.resetPassword,
              (route) => false,
            ),
            failure: (errorKey) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(AppTranslations.translate(context, errorKey)),
                backgroundColor: Colors.red,
              ),
            ),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => AppLoadingWidget(),
            serverFailure: (errorMessage) => AppErrorWidget(
              message: errorMessage,
              onRetry: () => context.read<DeliveryVerfiyCodeBloc>().add(
                DeliveryVerfiyCodeEvent.reset(),
              ),
            ),
            orElse: () => DeliveryVerfiyCodeForm(email: widget.email),
          );
        },
      ),
    );
  }
}
