// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PollVoteRestrictionReasonYetUnsent);

  @override
  int get hashCode => runtimeType.hashCode;
}
