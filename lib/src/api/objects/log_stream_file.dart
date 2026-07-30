// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The log is written to a file
@immutable
class LogStreamFile extends LogStream {
  const LogStreamFile({
    required this.path,
    required this.maxFileSize,
    required this.redirectStderr,
  });

  /// [path] Path to the file to where the internal TDLib log will be written
  final String path;

  /// [maxFileSize] The maximum size of the file to where the internal TDLib log
  /// is written before the file will automatically be rotated, in bytes
  final int maxFileSize;

  /// [redirectStderr] Pass true to additionally redirect stderr to the log
  /// file. Ignored on Windows
  final bool redirectStderr;

  static const String constructor = 'logStreamFile';

  static LogStreamFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LogStreamFile(
      path: (json['path'] as String?) ?? '',
      maxFileSize: (json['max_file_size'] as int?) ?? 0,
      redirectStderr: (json['redirect_stderr'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'path': path,
        'max_file_size': maxFileSize,
        'redirect_stderr': redirectStderr,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LogStreamFile &&
          const DeepCollectionEquality().equals(other.path, path) &&
          const DeepCollectionEquality()
              .equals(other.maxFileSize, maxFileSize) &&
          const DeepCollectionEquality()
              .equals(other.redirectStderr, redirectStderr));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(path),
        const DeepCollectionEquality().hash(maxFileSize),
        const DeepCollectionEquality().hash(redirectStderr)
      ]);
}
