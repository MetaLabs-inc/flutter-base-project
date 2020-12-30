import 'package:butterfly/src/core/navigation/routing_constants.dart';
import 'package:butterfly/src/core/services/navigation_service.dart';
import 'package:butterfly/src/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class RootViewModel extends BaseViewModel {
  // MARK: - Services

  // MARK: - Variables
  final GlobalKey<NavigatorState> navigatorKey =
      locator<NavigationService>().navigatorKey;
  String initialRoute;

  // MARK: - Busy keys
  static const BusyScreen = "busy_screen";

  RootViewModel() {
    setInitialRoute();
  }

  void setInitialRoute() {
    setBusyForObject(BusyScreen, true);
    initialRoute = DummyRoute;
    setBusyForObject(BusyScreen, false);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
