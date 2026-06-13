import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:electronics_store/core/services/app_service.dart';

part 'on_boarding_event.dart';
part 'on_boarding_state.dart';
part 'on_boarding_bloc.freezed.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  final AppService appService;

  OnBoardingBloc(this.appService) : super(const OnBoardingState()) {
    // 1. عند تغيير الصفحة عبر السحب يدوياً
    on<_PageChanged>(
      (event, emit) => emit(
        state.copyWith(
          status: const OnBoardingStatus.initial(),
          currentPage: event.index,
        ),
      ),
    );

    // 2. عند الضغط على زر التالي
    on<_NextPage>((event, emit) => _onNextPage(event, emit));

    // 3. عند الضغط على زر تخطي
    on<_Skip>((event, emit) => _onSkip(emit));
  }

  Future<void> _onNextPage(
    _NextPage event,
    Emitter<OnBoardingState> emit,
  ) async {
    if (state.currentPage >= event.listLength - 1) {
      appService.sharedPreferences.setString("step", "1");
      emit(state.copyWith(status: const OnBoardingStatus.navigateToLogin()));
    } else {
      final nextPage = state.currentPage + 1;

      emit(
        state.copyWith(
          status: const OnBoardingStatus.initial(),
          currentPage: nextPage,
        ),
      );
    }
  }

  Future<void> _onSkip(Emitter<OnBoardingState> emit) async {
    appService.sharedPreferences.setString("step", "1");
    emit(state.copyWith(status: const OnBoardingStatus.navigateToLogin()));
  }
}
