// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the list of Telegram Star subscriptions for the current user
/// Returns [StarSubscriptions]
@immutable
class GetStarSubscriptions extends TdFunction {
  const GetStarSubscriptions({
    required this.onlyExpiring,
    required this.offset,
  });

  /// [onlyExpiring] Pass true to receive only expiring subscriptions for which
  /// there aren't enough Telegram Stars to extend
  final bool onlyExpiring;

  /// [offset] Offset of the first subscription to return as received from the
  /// previous request; use empty string to get the first chunk of results
  final String offset;

  static const String constructor = 'getStarSubscriptions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'only_expiring': onlyExpiring,
        'offset': offset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetStarSubscriptions &&
          const DeepCollectionEquality()
              .equals(other.onlyExpiring, onlyExpiring) &&
          const DeepCollectionEquality().equals(other.offset, offset));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(onlyExpiring),
        const DeepCollectionEquality().hash(offset)
      ]);
}
