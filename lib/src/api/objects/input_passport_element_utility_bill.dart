// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's utility bill
@immutable
class InputPassportElementUtilityBill extends InputPassportElement {
  const InputPassportElementUtilityBill({
    required this.utilityBill,
  });

  /// [utilityBill] The utility bill to be saved
  final InputPersonalDocument utilityBill;

  static const String constructor = 'inputPassportElementUtilityBill';

  static InputPassportElementUtilityBill? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementUtilityBill(
      utilityBill: InputPersonalDocument.fromJson(
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
          other is InputPassportElementUtilityBill &&
          const DeepCollectionEquality()
              .equals(other.utilityBill, utilityBill));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(utilityBill)]);
}
