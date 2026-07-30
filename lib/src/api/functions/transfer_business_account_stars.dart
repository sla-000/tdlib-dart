// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Transfers Telegram Stars from the business account to the business bot;
/// for bots only
/// Returns [Ok]
@immutable
class TransferBusinessAccountStars extends TdFunction {
  const TransferBusinessAccountStars({
    required this.businessConnectionId,
    required this.starCount,
  });

  /// [businessConnectionId] Unique identifier of business connection
  final String businessConnectionId;

  /// [starCount] Number of Telegram Stars to transfer
  final int starCount;

  static const String constructor = 'transferBusinessAccountStars';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'business_connection_id': businessConnectionId,
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TransferBusinessAccountStars &&
          const DeepCollectionEquality()
              .equals(other.businessConnectionId, businessConnectionId) &&
          const DeepCollectionEquality().equals(other.starCount, starCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(businessConnectionId),
        const DeepCollectionEquality().hash(starCount)
      ]);
}
