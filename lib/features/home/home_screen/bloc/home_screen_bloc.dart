import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc()
    : super(const HomeScreenState(status: HomeScreenStatus.initial())) {
    on<_PageChanged>(_onPageChanged);
  }

  void _onPageChanged(_PageChanged event, Emitter<HomeScreenState> emit) async {
    emit(state.copyWith(currentPage: event.page));
  }
}
