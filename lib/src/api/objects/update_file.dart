// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Information about a file was updated
@immutable
class UpdateFile extends Update {
  const UpdateFile({
    required this.file,
  });

  /// [file] New data about the file
  final File file;

  static const String constructor = 'updateFile';

  static UpdateFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFile(
      file: File.fromJson(json['file'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file': file.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateFile &&
          const DeepCollectionEquality().equals(other.file, file));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(file)]);
}
