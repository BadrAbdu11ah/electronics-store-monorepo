import 'package:electronics_store_delivery/core/services/app_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  final AppService appService;
  HomeScreenBloc({required this.appService})
    : super(const HomeScreenState(status: HomeScreenStatus.initial())) {
    on<_PageChanged>(_onPageChanged);
    on<_Started>(_onStarted);
  }

  void _onStarted(_Started event, Emitter<HomeScreenState> emit) async {
    final String? lang = appService.sharedPreferences.getString('lang');
    if (lang != null) {
      emit(state.copyWith(lang: lang));
    }
  }

  void _onPageChanged(_PageChanged event, Emitter<HomeScreenState> emit) async {
    emit(state.copyWith(currentPage: event.page));
  }
}
