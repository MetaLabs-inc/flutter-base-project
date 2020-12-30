import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:butterfly/src/core/localization/app_localization.dart';
import 'package:butterfly/src/core/localization/supported_languages.dart';
import 'package:butterfly/src/core/navigation/router.dart';
import 'package:butterfly/src/core/navigation/routing_constants.dart';
import 'package:butterfly/src/core/view_models/root.dart';
import 'package:butterfly/src/locator.dart';
import 'package:stacked/stacked.dart';

Future main() async {
  setupLocator();
  await DotEnv().load('.env');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      builder: (context, RootViewModel viewModel, child) {
        return MaterialApp(
          onGenerateRoute: generateRoute,
          initialRoute: DummyRoute,
          supportedLocales: supportedLocales,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],
        );
        ;
      },
      viewModelBuilder: () => locator<RootViewModel>(),
    );
  }
}
