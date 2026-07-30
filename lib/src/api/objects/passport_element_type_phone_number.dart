// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's phone number
@immutable
class PassportElementTypePhoneNumber extends PassportElementType {
  const PassportElementTypePhoneNumber();

  static const String constructor = 'passportElementTypePhoneNumber';

  static PassportElementTypePhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypePhoneNumber();
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
          other is PassportElementTypePhoneNumber);

  @override
  int get hashCode => runtimeType.hashCode;
}
