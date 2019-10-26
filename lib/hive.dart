import 'dart:io' show Directory;

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:repository/repository.dart';
import 'app/app.dart';

bool _isHiveInitialized = false;

Future<void> initializeHive() async {
  if (_isHiveInitialized) {
    return;
  }
  _isHiveInitialized = true;

  final Directory dir = await getApplicationDocumentsDirectory();

  Hive
    ..init(dir.path)
    // TODO(FlutterDevelopers): Register the ID adapter generated in data.g here
    // with a unique typeID. Do not change the typeID.
    //
    // App module
    ..registerAdapter(IdAdapter<User>(), 0)
    ..registerAdapter(IdAdapter<StorageData>(), 1)
    // TODO(FlutterDevelopers): Register the adapter generated in data.g here
    // with a unique typeID. Do not change the typeID.
    //
    // App module
    ..registerAdapter(UserAdapter(), 6)
    ..registerAdapter(StorageDataAdapter(), 7);
}

class IdAdapter<T> extends TypeAdapter<Id<T>> {
  @override
  Id<T> read(BinaryReader reader) {
    final int numOfFields = reader.readByte();
    final Map<int, dynamic> fields = <int, dynamic>{
      // ignore: sdk_version_ui_as_code
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    final String returnType = fields[0];
    return Id<T>(returnType);
  }

  @override
  void write(BinaryWriter writer, Id<T> obj) {
    writer.writeByte(1);
    writer.writeByte(0);
    writer.write(obj.id);
  }
}
