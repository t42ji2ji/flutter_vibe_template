// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$onboardingPagesHash() => r'b3423dbc700b55ec3c1964ef0c39bb1e22136490';

/// See also [onboardingPages].
@ProviderFor(onboardingPages)
final onboardingPagesProvider =
    AutoDisposeProvider<List<OnboardingPageData>>.internal(
      onboardingPages,
      name: r'onboardingPagesProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$onboardingPagesHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef OnboardingPagesRef = AutoDisposeProviderRef<List<OnboardingPageData>>;
String _$onboardingStateHash() => r'9b0ac3f202372f76c22be67f170bd6fe0ab79b04';

/// See also [OnboardingState].
@ProviderFor(OnboardingState)
final onboardingStateProvider =
    AutoDisposeNotifierProvider<OnboardingState, int>.internal(
      OnboardingState.new,
      name: r'onboardingStateProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$onboardingStateHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$OnboardingState = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
