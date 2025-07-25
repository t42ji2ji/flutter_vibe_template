import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/onboarding_page_data.dart';

part 'onboarding_provider.g.dart';

@riverpod
List<OnboardingPageData> onboardingPages(ref) {
  return [
    const OnboardingPageData(
      title: "Welcome to Eastern Purple Star",
      description: "Your personal spiritual guide for growth and enlightenment. Discover the ancient wisdom of Eastern astrology and feng shui.",
      imagePath: "assets/images/onboarding_1.png",
    ),
    const OnboardingPageData(
      title: "Personalized Guidance",
      description: "Receive tailored insights based on your birth chart and current life circumstances. Let the stars guide your journey.",
      imagePath: "assets/images/onboarding_2.png",
    ),
    const OnboardingPageData(
      title: "Transform Your Life",
      description: "Unlock your potential and achieve personal growth through ancient Eastern wisdom and modern spiritual practices.",
      imagePath: "assets/images/onboarding_3.png",
    ),
  ];
}

@riverpod
class OnboardingState extends _$OnboardingState {
  @override
  int build() => 0;

  void nextPage() {
    final pages = ref.read(onboardingPagesProvider);
    if (state < pages.length - 1) {
      state = state + 1;
    }
  }

  void previousPage() {
    if (state > 0) {
      state = state - 1;
    }
  }

  void setPage(int index) {
    state = index;
  }
}