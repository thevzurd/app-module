import 'package:flutter/material.dart';
import '../services/navigation.dart';

class WinWisely99 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WinWisely99',
      initialRoute: '/',
      onGenerateRoute: routes,
    );
  }
}
