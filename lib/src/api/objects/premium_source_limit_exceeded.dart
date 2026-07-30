// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A limit was exceeded
@immutable
class PremiumSourceLimitExceeded extends PremiumSource {
  const PremiumSourceLimitExceeded({
    required this.limitType,
  });

  /// [limitType] Type of the exceeded limit
  final PremiumLimitType limitType;

  static const String constructor = 'premiumSourceLimitExceeded';

  static PremiumSourceLimitExceeded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumSourceLimitExceeded(
      limitType: PremiumLimitType.fromJson(
          json['limit_type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'limit_type': limitType.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PremiumSourceLimitExceeded &&
          const DeepCollectionEquality().equals(other.limitType, limitType));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(limitType)]);
}
