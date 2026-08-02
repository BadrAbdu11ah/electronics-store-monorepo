import 'package:electronics_store/features/auth/data/auth_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_page_event.dart';
part 'settings_page_state.dart';
part 'settings_page_bloc.freezed.dart';

class SettingsPageBloc extends Bloc<SettingsPageEvent, SettingsPageState> {
  final AuthData authData;
  SettingsPageBloc({required this.authData}) : super(_Initial()) {
    on<SettingsPageEvent>((event, emit) async {
      await event.when(logout: () => onLogout(emit));
    });
  }

  Future<void> onLogout(Emitter<SettingsPageState> emit) async {
    emit(_Loading());
    final response = await authData.logout();
    await response.fold(
      (failure) async => emit(_ServerFailure(failure.message)),
      (r) async {
        emit(_LoggedOut());
      },
    );
  }
}
