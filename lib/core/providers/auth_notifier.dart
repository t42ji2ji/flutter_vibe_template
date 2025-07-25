import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/auth/models/auth_state.dart';
import '../../features/auth/providers/auth_provider.dart';

class AuthNotifierWrapper extends ChangeNotifier {
  AuthNotifierWrapper(this._ref) {
    _ref.listen(authNotifierProvider, (previous, next) {
      notifyListeners();
    });
  }

  final Ref _ref;

  AuthState get authState => _ref.read(authNotifierProvider);
}

final authNotifierWrapperProvider = Provider<AuthNotifierWrapper>((ref) {
  return AuthNotifierWrapper(ref);
});
