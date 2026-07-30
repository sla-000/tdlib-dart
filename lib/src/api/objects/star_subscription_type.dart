// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes type of subscription paid in Telegram Stars
@immutable
abstract class StarSubscriptionType extends TdObject {
  const StarSubscriptionType();

  static const String constructor = 'starSubscriptionType';

  /// Inherited by:
  /// [StarSubscriptionTypeBot]
  /// [StarSubscriptionTypeChannel]
  static StarSubscriptionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StarSubscriptionTypeBot.constructor:
        return StarSubscriptionTypeBot.fromJson(json);
      case StarSubscriptionTypeChannel.constructor:
        return StarSubscriptionTypeChannel.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is StarSubscriptionType);

  @override
  int get hashCode => runtimeType.hashCode;
}
