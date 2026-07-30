import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The poll isn't sent yet
@immutable
class PollVoteRestrictionReasonYetUnsent extends PollVoteRestrictionReason {
  const PollVoteRestrictionReasonYetUnsent();

  static const String constructor = 'pollVoteRestrictionReasonYetUnsent';

  static PollVoteRestrictionReasonYetUnsent? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PollVoteRestrictionReasonYetUnsent();
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
