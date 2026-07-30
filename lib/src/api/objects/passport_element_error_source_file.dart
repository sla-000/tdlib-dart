// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The file contains an error. The error will be considered resolved when the
/// file changes
@immutable
class PassportElementErrorSourceFile extends PassportElementErrorSource {
  const PassportElementErrorSourceFile({
    required this.fileIndex,
  });

  /// [fileIndex] Index of a file with the error
  final int fileIndex;

  static const String constructor = 'passportElementErrorSourceFile';

  static PassportElementErrorSourceFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementErrorSourceFile(
      fileIndex: json['file_index'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_index': fileIndex,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PassportElementErrorSourceFile &&
          const DeepCollectionEquality().equals(other.fileIndex, fileIndex));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(fileIndex)]);
}
