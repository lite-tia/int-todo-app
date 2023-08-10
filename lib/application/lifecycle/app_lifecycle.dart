import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appLifecycleObserverProvider = Provider<AppLifecycleObserver>((ref) {
  final observer = AppLifecycleObserver(ref: ref);
  ref.onDispose(observer.dispose);
  return observer;
});

class AppLifecycleObserver with WidgetsBindingObserver {
  AppLifecycleObserver({required Ref ref}) : _ref = ref {
    WidgetsBinding.instance.addObserver(this);
  }

  final Ref _ref;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print(state);
  }

  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
  }
}
