// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PollVoteRestrictionReasonOther);

  @override
  int get hashCode => runtimeType.hashCode;
}
