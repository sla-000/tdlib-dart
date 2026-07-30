// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains approximate storage usage statistics, excluding files of unknown
/// file type
@immutable
class StorageStatisticsFast extends TdObject {
  const StorageStatisticsFast({
    required this.filesSize,
    required this.fileCount,
    required this.databaseSize,
    required this.languagePackDatabaseSize,
    required this.logSize,
  });

  /// [filesSize] Approximate total size of files, in bytes
  final int filesSize;

  /// [fileCount] Approximate number of files
  final int fileCount;

  /// [databaseSize] Size of the database
  final int databaseSize;

  /// [languagePackDatabaseSize] Size of the language pack database
  final int languagePackDatabaseSize;

  /// [logSize] Size of the TDLib internal log
  final int logSize;

  static const String constructor = 'storageStatisticsFast';

  static StorageStatisticsFast? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorageStatisticsFast(
      filesSize: (json['files_size'] as int?) ?? 0,
      fileCount: (json['file_count'] as int?) ?? 0,
      databaseSize: (json['database_size'] as int?) ?? 0,
      languagePackDatabaseSize:
          (json['language_pack_database_size'] as int?) ?? 0,
      logSize: (json['log_size'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'files_size': filesSize,
        'file_count': fileCount,
        'database_size': databaseSize,
        'language_pack_database_size': languagePackDatabaseSize,
        'log_size': logSize,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StorageStatisticsFast &&
          const DeepCollectionEquality().equals(other.filesSize, filesSize) &&
          const DeepCollectionEquality().equals(other.fileCount, fileCount) &&
          const DeepCollectionEquality()
              .equals(other.databaseSize, databaseSize) &&
          const DeepCollectionEquality().equals(
              other.languagePackDatabaseSize, languagePackDatabaseSize) &&
          const DeepCollectionEquality().equals(other.logSize, logSize));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(filesSize),
        const DeepCollectionEquality().hash(fileCount),
        const DeepCollectionEquality().hash(databaseSize),
        const DeepCollectionEquality().hash(languagePackDatabaseSize),
        const DeepCollectionEquality().hash(logSize)
      ]);
}
