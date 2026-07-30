// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of options for gifting Telegram Premium to a user
@immutable
class PremiumGiftPaymentOptions extends TdObject {
  const PremiumGiftPaymentOptions({
    required this.options,
  });

  /// [options] The list of options sorted by Telegram Premium subscription
  /// duration
  final List<PremiumGiftPaymentOption> options;

  static const String constructor = 'premiumGiftPaymentOptions';

  static PremiumGiftPaymentOptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumGiftPaymentOptions(
      options: List<PremiumGiftPaymentOption>.from(
          ((json['options'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PremiumGiftPaymentOption.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'options': options.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PremiumGiftPaymentOptions &&
          const DeepCollectionEquality().equals(other.options, options));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(options)]);
}
