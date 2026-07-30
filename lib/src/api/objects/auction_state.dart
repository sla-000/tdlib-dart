import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes state of an auction
@immutable
abstract class AuctionState extends TdObject {
  const AuctionState();

  static const String constructor = 'auctionState';

  /// Inherited by:
  /// [AuctionStateActive]
  /// [AuctionStateFinished]
  static AuctionState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case AuctionStateActive.constructor:
        return AuctionStateActive.fromJson(json);
      case AuctionStateFinished.constructor:
        return AuctionStateFinished.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
