// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a list of poll voters
@immutable
class PollVoters extends TdObject {
  const PollVoters({
    required this.totalCount,
    required this.voters,
  });

  /// [totalCount] Approximate total number of poll voters found
  final int totalCount;

  /// [voters] List of poll voters
  final List<PollVoter> voters;

  static const String constructor = 'pollVoters';

  static PollVoters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollVoters(
      totalCount: (json['total_count'] as int?) ?? 0,
      voters: List<PollVoter>.from(
          ((json['voters'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PollVoter.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'voters': voters.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PollVoters &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount) &&
          const DeepCollectionEquality().equals(other.voters, voters));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(totalCount),
        const DeepCollectionEquality().hash(voters)
      ]);
}
