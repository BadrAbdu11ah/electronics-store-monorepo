import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_success_event.dart';
part 'admin_success_state.dart';
part 'admin_success_bloc.freezed.dart';

class AdminSuccessBloc extends Bloc<AdminSuccessEvent, AdminSuccessState> {
  AdminSuccessBloc() : super(_Initial()) {
    on<_Started>((event, emit) async {
      Future.delayed(const Duration(seconds: 3), () => emit(_Success()));
    });
  }
}
