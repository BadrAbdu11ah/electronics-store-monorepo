part of 'on_boarding_bloc.dart';

@freezed
class OnBoardingStatus with _$OnBoardingStatus {
  const factory OnBoardingStatus.initial() = _Initial;
  const factory OnBoardingStatus.navigateToLogin() =
      _NavigateToLogin; // حالة الانتقال لصفحة تسجيل الدخول
}

@freezed
abstract class OnBoardingState with _$OnBoardingState {
  const factory OnBoardingState({
    @Default(OnBoardingStatus.initial()) OnBoardingStatus status,
    @Default(0) int currentPage,
  }) = _OnBoardingState;
}
