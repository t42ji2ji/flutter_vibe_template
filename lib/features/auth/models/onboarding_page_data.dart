import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_page_data.freezed.dart';

@freezed
abstract class OnboardingPageData with _$OnboardingPageData {
  const factory OnboardingPageData({
    required String title,
    required String description,
    required String imagePath,
  }) = _OnboardingPageData;
}