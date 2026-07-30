// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The front side of the document contains an error. The error will be
/// considered resolved when the file with the front side changes
@immutable
class PassportElementErrorSourceFrontSide extends PassportElementErrorSource {
  const PassportElementErrorSourceFrontSide();

  static const String constructor = 'passportElementErrorSourceFrontSide';

  static PassportElementErrorSourceFrontSide? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementErrorSourceFrontSide();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PassportElementErrorSourceFrontSide);

  @override
  int get hashCode => runtimeType.hashCode;
}
