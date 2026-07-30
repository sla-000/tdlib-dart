// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's temporary registration
@immutable
class PassportElementTypeTemporaryRegistration extends PassportElementType {
  const PassportElementTypeTemporaryRegistration();

  static const String constructor = 'passportElementTypeTemporaryRegistration';

  static PassportElementTypeTemporaryRegistration? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeTemporaryRegistration();
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
          other is PassportElementTypeTemporaryRegistration);

  @override
  int get hashCode => runtimeType.hashCode;
}
