// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user is restricted in the chat
@immutable
class ReactionUnavailabilityReasonRestricted
    extends ReactionUnavailabilityReason {
  const ReactionUnavailabilityReasonRestricted();

  static const String constructor = 'reactionUnavailabilityReasonRestricted';

  static ReactionUnavailabilityReasonRestricted? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReactionUnavailabilityReasonRestricted();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReactionUnavailabilityReasonRestricted);

  @override
  int get hashCode => runtimeType.hashCode;
}
