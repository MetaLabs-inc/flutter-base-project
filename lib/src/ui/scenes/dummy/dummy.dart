import 'package:butterfly/src/core/localization/app_localization.dart';
import 'package:butterfly/src/core/view_models/dummy.dart';
import 'package:butterfly/src/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Dummy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations locale = AppLocalizations.of(context);
    final largeTitle =
        locale.getTranslation('DUMMY_SCREEN.DUMMY_SCREEN_ZONE.tag');

    return ChangeNotifierProvider<DummyViewModel>(
      create: (context) => locator<DummyViewModel>(),
      child: Consumer<DummyViewModel>(
        builder: (context, model, child) => CupertinoPageScaffold(
          backgroundColor: Colors.white,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return <Widget>[
                CupertinoSliverNavigationBar(
                  largeTitle: Text(
                    largeTitle,
                  ),
                )
              ];
            },
            body: Center(
              child: Text(
                largeTitle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
