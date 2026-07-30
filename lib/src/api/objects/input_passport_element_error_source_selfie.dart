// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The selfie contains an error. The error is considered resolved when the
/// file with the selfie changes
@immutable
class InputPassportElementErrorSourceSelfie
    extends InputPassportElementErrorSource {
  const InputPassportElementErrorSourceSelfie({
    required this.fileHash,
  });

  /// [fileHash] Current hash of the file containing the selfie
  final String fileHash;

  static const String constructor = 'inputPassportElementErrorSourceSelfie';

  static InputPassportElementErrorSourceSelfie? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceSelfie(
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
          other is InputPassportElementErrorSourceSelfie &&
          const DeepCollectionEquality().equals(other.fileHash, fileHash));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(fileHash)]);
}
