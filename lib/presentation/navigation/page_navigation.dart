import 'package:flutter/material.dart';

class PageNavigation {
  const PageNavigation._();

  static Future push(
    BuildContext context,
    Widget page, {
    bool rootNavigator = false,
    bool fullscreenDialog = false,
  }) async {
    return Navigator.of(context, rootNavigator: rootNavigator).push(
      MaterialPageRoute(
        builder: (_) => page,
        fullscreenDialog: fullscreenDialog,
      ),
    );
  }

  static Future pushReplacement(
    BuildContext context,
    Widget page, {
    bool rootNavigator = false,
    bool fullscreenDialog = false,
  }) async {
    return Navigator.of(context, rootNavigator: rootNavigator).pushReplacement(
      MaterialPageRoute(
        builder: (_) => page,
        fullscreenDialog: fullscreenDialog,
      ),
    );
  }

  static Future pushAndRemoveUntil(
    BuildContext context,
    Widget page, {
    bool rootNavigator = false,
    bool fullscreenDialog = false,
  }) async {
    return Navigator.of(context, rootNavigator: rootNavigator)
        .pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (_) => page,
        fullscreenDialog: fullscreenDialog,
      ),
      (_) => false,
    );
  }

  static Future pop(
    BuildContext context, {
    dynamic result,
    bool rootNavigator = false,
  }) async {
    return Navigator.of(context, rootNavigator: rootNavigator).pop(result);
  }

  static Future popUntil(
    BuildContext context, {
    required RoutePredicate predicate,
    bool rootNavigator = false,
  }) async {
    return Navigator.of(context, rootNavigator: rootNavigator)
        .popUntil(predicate);
  }

  static Future popUntilRoot(
    BuildContext context, {
    bool rootNavigator = false,
  }) async {
    return Navigator.of(context, rootNavigator: rootNavigator)
        .popUntil((route) => route.isFirst);
  }

  static Future popUntilFirst(
    BuildContext context, {
    bool rootNavigator = false,
  }) async {
    return Navigator.of(context, rootNavigator: rootNavigator)
        .popUntil((route) => route.isFirst);
  }

  static Future popUntilLast(
    BuildContext context, {
    bool rootNavigator = false,
  }) async {
    return Navigator.of(context, rootNavigator: rootNavigator)
        .popUntil((route) => route.isFirst);
  }
}
