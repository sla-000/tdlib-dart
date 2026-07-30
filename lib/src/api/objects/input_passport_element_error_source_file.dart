// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The file contains an error. The error is considered resolved when the file
/// changes
@immutable
class InputPassportElementErrorSourceFile
    extends InputPassportElementErrorSource {
  const InputPassportElementErrorSourceFile({
    required this.fileHash,
  });

  /// [fileHash] Current hash of the file which has the error
  final String fileHash;

  static const String constructor = 'inputPassportElementErrorSourceFile';

  static InputPassportElementErrorSourceFile? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceFile(
      fileHash: (json['file_hash'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_hash': fileHash,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPassportElementErrorSourceFile &&
          const DeepCollectionEquality().equals(other.fileHash, fileHash));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(fileHash)]);
}
