// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's email address
@immutable
class PassportElementTypeEmailAddress extends PassportElementType {
  const PassportElementTypeEmailAddress();

  static const String constructor = 'passportElementTypeEmailAddress';

  static PassportElementTypeEmailAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeEmailAddress();
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
          other is PassportElementTypeEmailAddress);

  @override
  int get hashCode => runtimeType.hashCode;
}
