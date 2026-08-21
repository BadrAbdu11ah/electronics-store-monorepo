import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_success_event.dart';
part 'delivery_success_state.dart';
part 'delivery_success_bloc.freezed.dart';

class DeliverySuccessBloc
    extends Bloc<DeliverySuccessEvent, DeliverySuccessState> {
  DeliverySuccessBloc() : super(_Initial()) {
    on<_Started>((event, emit) async {
      Future.delayed(const Duration(seconds: 3), () => emit(_Success()));
    });
  }
}
