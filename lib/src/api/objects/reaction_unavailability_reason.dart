// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes why the current user can't add reactions to the message, despite
/// some other users can
@immutable
abstract class ReactionUnavailabilityReason extends TdObject {
  const ReactionUnavailabilityReason();

  static const String constructor = 'reactionUnavailabilityReason';

  /// Inherited by:
  /// [ReactionUnavailabilityReasonAnonymousAdministrator]
  /// [ReactionUnavailabilityReasonGuest]
  /// [ReactionUnavailabilityReasonRestricted]
  static ReactionUnavailabilityReason? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ReactionUnavailabilityReasonAnonymousAdministrator.constructor:
        return ReactionUnavailabilityReasonAnonymousAdministrator.fromJson(
            json);
      case ReactionUnavailabilityReasonGuest.constructor:
        return ReactionUnavailabilityReasonGuest.fromJson(json);
      case ReactionUnavailabilityReasonRestricted.constructor:
        return ReactionUnavailabilityReasonRestricted.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReactionUnavailabilityReason);

  @override
  int get hashCode => runtimeType.hashCode;
}
