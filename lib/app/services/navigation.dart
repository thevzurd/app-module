import 'package:flutter/material.dart';
import '../app.dart';

Route<dynamic> routes(RouteSettings settings) {
  return MaterialPageRoute<dynamic>(
    builder: (BuildContext context) {
      return globals.navigationMap[settings.name];
    },
  );
}
