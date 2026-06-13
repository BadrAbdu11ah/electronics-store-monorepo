part of 'on_boarding_bloc.dart';

@freezed
class OnBoardingEvent with _$OnBoardingEvent {
  // حدث يتفعل عند سحب الصفحة يدوياً (Swipe) ليتغير الـ index
  const factory OnBoardingEvent.pageChanged({required int index}) =
      _PageChanged;

  // حدث الضغط على زر "التالي"
  const factory OnBoardingEvent.nextPage({required int listLength}) = _NextPage;

  // حدث الضغط على زر "تخطي"
  const factory OnBoardingEvent.skip() = _Skip;
}
