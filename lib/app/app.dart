import 'dart:async';
export 'bloc/data.dart';
export 'services/auth_user_service.dart';
export 'services/globals.dart' show globals;
export 'services/network.dart';
export 'services/services_provider.dart';
export 'services/storage.dart';
export 'services/user.dart';
export 'utils/utils.dart';
export 'widgets/winwisely99.dart';

Completer<dynamic> storageServiceReadyCompleter = Completer<dynamic>();
Completer<dynamic> networkServiceReadyCompleter = Completer<dynamic>();
Completer<dynamic> userServiceReadyCompleter = Completer<dynamic>();
Completer<dynamic> authUserServiceReadyCompleter = Completer<dynamic>();
Future<dynamic> get storageReady => storageServiceReadyCompleter.future;
Future<dynamic> get networkReady => networkServiceReadyCompleter.future;
Future<dynamic> get userServiceReady => userServiceReadyCompleter.future;
Future<dynamic> get authUserReady => userServiceReadyCompleter.future;
