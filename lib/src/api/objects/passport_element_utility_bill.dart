// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's utility bill
@immutable
class PassportElementUtilityBill extends PassportElement {
  const PassportElementUtilityBill({
    required this.utilityBill,
  });

  /// [utilityBill] Utility bill
  final PersonalDocument utilityBill;

  static const String constructor = 'passportElementUtilityBill';

  static PassportElementUtilityBill? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementUtilityBill(
      utilityBill: PersonalDocument.fromJson(
          json['utility_bill'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'utility_bill': utilityBill.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PassportElementUtilityBill &&
          const DeepCollectionEquality()
              .equals(other.utilityBill, utilityBill));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(utilityBill)]);
}
