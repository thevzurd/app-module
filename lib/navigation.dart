import 'package:flutter/material.dart';
// TODO(FlutterDevelopers): Import modules here
import 'package:com.winwisely99.news/news.dart';

import 'app/app.dart';

Route<dynamic> routes(RouteSettings settings) {
  MaterialPageRoute<dynamic> _route;
  // TODO(FlutterDevelopers): Add the path to module as a 'case'
  switch (settings.name) {
    case '/news':
      _route = MaterialPageRoute<dynamic>(
        builder: (BuildContext context) {
          return NewsFeed(
            key: ValueKey<String>(settings.name),
          );

/*           return Scaffold(
            key: ValueKey<String>(settings.name),
            appBar: AppBar(title: const Text('First Page')),
            body: Center(
              child: const Text('Page'),
            ),
          ); */
        },
      );
      break;
    case '/':
      _route = MaterialPageRoute<dynamic>(
        builder: (BuildContext context) {
          return SplashScreen(
            key: ValueKey<String>(settings.name),
          );
        },
      );
      break;
    default:
      // TODO(FlutterDevelopers): Add the path to module as a 'case' - user this when data needs to be
      // passed to the module
      final List<String> info = settings.name.split('/');
      switch (info[1]) {
        default:
          _route = MaterialPageRoute<dynamic>(
            builder: (BuildContext context) {
              return NewsFeed(
                key: ValueKey<String>(settings.name),
              );
            },
          );
          break;
      }
      break;
  }
  return _route;
}
