import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loggingMiddlewareProvider = Provider<LoggingMiddleware>((ref) {
  return LoggingMiddleware(ref: ref);
});

class LoggingMiddleware extends GetMiddleware {
  LoggingMiddleware({required Ref ref}) : _ref = ref;

  final Ref _ref;

  @override
  RouteSettings? redirect(String? route) {
    return null;
  }

  @override
  GetPage? onPageCalled(GetPage? page) {
    return page;
  }
}
