import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The poll can't be voted by the user due to some other reason
@immutable
class PollVoteRestrictionReasonOther extends PollVoteRestrictionReason {
  const PollVoteRestrictionReasonOther();

  static const String constructor = 'pollVoteRestrictionReasonOther';

  static PollVoteRestrictionReasonOther? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PollVoteRestrictionReasonOther();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
