// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The reverse side of the document contains an error. The error is
/// considered resolved when the file with the reverse side of the document
/// changes
@immutable
class InputPassportElementErrorSourceReverseSide
    extends InputPassportElementErrorSource {
  const InputPassportElementErrorSourceReverseSide({
    required this.fileHash,
  });

  /// [fileHash] Current hash of the file containing the reverse side
  final String fileHash;

  static const String constructor =
      'inputPassportElementErrorSourceReverseSide';

  static InputPassportElementErrorSourceReverseSide? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceReverseSide(
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
          other is InputPassportElementErrorSourceReverseSide &&
          const DeepCollectionEquality().equals(other.fileHash, fileHash));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(fileHash)]);
}
