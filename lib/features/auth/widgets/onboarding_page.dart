import 'package:flutter/material.dart';

import '../models/onboarding_page_data.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingPageData data;

  const OnboardingPage({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Placeholder for image - you can replace with actual image
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(
              Icons.star,
              size: 80,
              color: Theme.of(context).primaryColor,
            ),
          ),
          const SizedBox(height: 48),
          Text(
            data.title,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Text(
            data.description,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).textTheme.bodyMedium?.color,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}