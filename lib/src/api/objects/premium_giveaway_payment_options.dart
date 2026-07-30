// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of options for creating of Telegram Premium giveaway or
/// manual distribution of Telegram Premium among chat members
@immutable
class PremiumGiveawayPaymentOptions extends TdObject {
  const PremiumGiveawayPaymentOptions({
    required this.options,
  });

  /// [options] The list of options
  final List<PremiumGiveawayPaymentOption> options;

  static const String constructor = 'premiumGiveawayPaymentOptions';

  static PremiumGiveawayPaymentOptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumGiveawayPaymentOptions(
      options: List<PremiumGiveawayPaymentOption>.from(
          ((json['options'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PremiumGiveawayPaymentOption.fromJson(
                  item as Map<String, dynamic>?))
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
          other is PremiumGiveawayPaymentOptions &&
          const DeepCollectionEquality().equals(other.options, options));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(options)]);
}
