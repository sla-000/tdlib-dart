// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about features, available to Premium users
@immutable
class PremiumFeatures extends TdObject {
  const PremiumFeatures({
    required this.features,
    required this.limits,
    this.paymentLink,
  });

  /// [features] The list of available features
  final List<PremiumFeature> features;

  /// [limits] The list of limits, increased for Premium users
  final List<PremiumLimit> limits;

  /// [paymentLink] An internal link to be opened to pay for Telegram Premium if
  /// store payment isn't possible; may be null if direct payment isn't
  /// available
  final InternalLinkType? paymentLink;

  static const String constructor = 'premiumFeatures';

  static PremiumFeatures? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumFeatures(
      features: List<PremiumFeature>.from(
          ((json['features'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PremiumFeature.fromJson(item))
              .toList()),
      limits: List<PremiumLimit>.from(
          ((json['limits'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PremiumLimit.fromJson(item))
              .toList()),
      paymentLink: InternalLinkType.fromJson(
          json['payment_link'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'features': features.map((item) => item.toJson()).toList(),
        'limits': limits.map((item) => item.toJson()).toList(),
        'payment_link': paymentLink?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PremiumFeatures &&
          const DeepCollectionEquality().equals(other.features, features) &&
          const DeepCollectionEquality().equals(other.limits, limits) &&
          const DeepCollectionEquality()
              .equals(other.paymentLink, paymentLink));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(features),
        const DeepCollectionEquality().hash(limits),
        const DeepCollectionEquality().hash(paymentLink)
      ]);
}
