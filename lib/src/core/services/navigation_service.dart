import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic> navigateToWithReplacement(String routeName,
      {dynamic arguments}) {
    return navigatorKey.currentState.pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {dynamic arguments}) {
    return navigatorKey.currentState.pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
    );
  }

  void popUntil(String routeName) {
    return navigatorKey.currentState.popUntil(
      ModalRoute.withName(
        routeName,
      ),
    );
  }

  void goBack() {
    return navigatorKey.currentState.pop();
  }
}
