import 'package:flutter/material.dart';
import '../widgets/splash_screen.dart';

class Globals {
  factory Globals(String _name) {
    if (_cache.containsKey(_name)) {
      _cache[_name].navigationMap['/'] = const SplashScreen(
        key: ValueKey<String>('/'),
      );
      return _cache[_name];
    } else {
      final Globals _instance = Globals._internal(_name);
      _cache[_name] = _instance;
      _cache[_name].navigationMap['/'] = const SplashScreen(
        key: ValueKey<String>('/'),
      );
      return _instance;
    }
  }
  // Setup for factory constructor
  Globals._internal(this.name);
  final String name;
  static final Map<String, Globals> _cache = <String, Globals>{};
  final Map<String, Widget> navigationMap = <String, Widget>{};
}

final Globals globals = Globals('OnlyInstance');
