import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Reason of vote restriction in the poll for the current user
@immutable
abstract class PollVoteRestrictionReason extends TdObject {
  const PollVoteRestrictionReason();

  static const String constructor = 'pollVoteRestrictionReason';

  /// Inherited by:
  /// [PollVoteRestrictionReasonClosed]
  /// [PollVoteRestrictionReasonCountryRestricted]
  /// [PollVoteRestrictionReasonMembershipRequired]
  /// [PollVoteRestrictionReasonOther]
  /// [PollVoteRestrictionReasonScheduled]
  /// [PollVoteRestrictionReasonYetUnsent]
  static PollVoteRestrictionReason? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PollVoteRestrictionReasonClosed.constructor:
        return PollVoteRestrictionReasonClosed.fromJson(json);
      case PollVoteRestrictionReasonCountryRestricted.constructor:
        return PollVoteRestrictionReasonCountryRestricted.fromJson(json);
      case PollVoteRestrictionReasonMembershipRequired.constructor:
        return PollVoteRestrictionReasonMembershipRequired.fromJson(json);
      case PollVoteRestrictionReasonOther.constructor:
        return PollVoteRestrictionReasonOther.fromJson(json);
      case PollVoteRestrictionReasonScheduled.constructor:
        return PollVoteRestrictionReasonScheduled.fromJson(json);
      case PollVoteRestrictionReasonYetUnsent.constructor:
        return PollVoteRestrictionReasonYetUnsent.fromJson(json);
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
