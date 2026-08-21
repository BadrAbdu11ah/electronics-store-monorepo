import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_boarding_model.freezed.dart';

@freezed
abstract class OnBoardingModel with _$OnBoardingModel {
  const OnBoardingModel._();

  const factory OnBoardingModel({
    required String image,
    required String title,
    required String body,
  }) = _OnBoardingModel;
}
