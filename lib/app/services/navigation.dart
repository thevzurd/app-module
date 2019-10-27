import 'package:flutter/material.dart';
// TODO(FlutterDevelopers): Import modules here
import '../app.dart';

Route<dynamic> routes(RouteSettings settings) {
  navigationMap['/'] = const SplashScreen(
    key: ValueKey<String>('/'),
  );
  return MaterialPageRoute<dynamic>(
    builder: (BuildContext context) {
      return navigationMap[settings.name];
    },
  );
}
