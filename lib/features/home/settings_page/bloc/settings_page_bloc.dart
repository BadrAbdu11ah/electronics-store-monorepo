import 'package:electronics_store/core/services/app_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_page_event.dart';
part 'settings_page_state.dart';
part 'settings_page_bloc.freezed.dart';

class SettingsPageBloc extends Bloc<SettingsPageEvent, SettingsPageState> {
  final AppService appService;
  SettingsPageBloc({required this.appService}) : super(_Initial()) {
    on<SettingsPageEvent>((event, emit) {
      event.when(logout: () => onLogout(emit));
    });
  }

  Future<void> onLogout(Emitter<SettingsPageState> emit) async {
    emit(_Loading());
    await appService.sharedPreferences.setString("step", "1");
    emit(_LoggedOut());
  }
}
