// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The element contains an error in an unspecified place. The error will be
/// considered resolved when new data is added
@immutable
class PassportElementErrorSourceUnspecified extends PassportElementErrorSource {
  const PassportElementErrorSourceUnspecified();

  static const String constructor = 'passportElementErrorSourceUnspecified';

  static PassportElementErrorSourceUnspecified? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementErrorSourceUnspecified();
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
          other is PassportElementErrorSourceUnspecified);

  @override
  int get hashCode => runtimeType.hashCode;
}
