// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user subscribing to Telegram Premium
@immutable
class StorePaymentPurposePremiumSubscription extends StorePaymentPurpose {
  const StorePaymentPurposePremiumSubscription({
    required this.isRestore,
    required this.isUpgrade,
  });

  /// [isRestore] Pass true if this is a restore of a Telegram Premium purchase;
  /// only for App Store
  final bool isRestore;

  /// [isUpgrade] Pass true if this is an upgrade from a monthly subscription to
  /// early subscription; only for App Store
  final bool isUpgrade;

  static const String constructor = 'storePaymentPurposePremiumSubscription';

  static StorePaymentPurposePremiumSubscription? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorePaymentPurposePremiumSubscription(
      isRestore: json['is_restore'] as bool,
      isUpgrade: json['is_upgrade'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_restore': isRestore,
        'is_upgrade': isUpgrade,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StorePaymentPurposePremiumSubscription &&
          const DeepCollectionEquality().equals(other.isRestore, isRestore) &&
          const DeepCollectionEquality().equals(other.isUpgrade, isUpgrade));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(isRestore),
        const DeepCollectionEquality().hash(isUpgrade)
      ]);
}
