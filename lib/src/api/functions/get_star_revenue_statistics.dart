// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns detailed Telegram Star revenue statistics
/// Returns [StarRevenueStatistics]
@immutable
class GetStarRevenueStatistics extends TdFunction {
  const GetStarRevenueStatistics({
    required this.ownerId,
    required this.isDark,
  });

  /// [ownerId] Identifier of the owner of the Telegram Stars; can be identifier
  /// of the current user, an owned bot, or a supergroup or a channel chat with
  /// supergroupFullInfo.can_get_star_revenue_statistics == true
  final MessageSender ownerId;

  /// [isDark] Pass true if a dark theme is used by the application
  final bool isDark;

  static const String constructor = 'getStarRevenueStatistics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'owner_id': ownerId.toJson(),
        'is_dark': isDark,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetStarRevenueStatistics &&
          const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
          const DeepCollectionEquality().equals(other.isDark, isDark));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(ownerId),
        const DeepCollectionEquality().hash(isDark)
      ]);
}
