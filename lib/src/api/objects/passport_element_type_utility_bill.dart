// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's utility bill
@immutable
class PassportElementTypeUtilityBill extends PassportElementType {
  const PassportElementTypeUtilityBill();

  static const String constructor = 'passportElementTypeUtilityBill';

  static PassportElementTypeUtilityBill? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeUtilityBill();
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
          other is PassportElementTypeUtilityBill);

  @override
  int get hashCode => runtimeType.hashCode;
}
