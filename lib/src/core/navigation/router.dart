import 'package:butterfly/src/core/navigation/routing_constants.dart';
import 'package:butterfly/src/ui/scenes/dummy/dummy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DummyRoute:
      return MaterialPageRoute(
        builder: (context) => Dummy(),
        settings: settings,
      );
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}.'),
          ),
        ),
        settings: settings,
      );
  }
}
