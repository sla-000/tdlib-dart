// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A detailed statistics about poll votes
@immutable
class PollVoteStatistics extends TdObject {
  const PollVoteStatistics({
    required this.voteGraph,
  });

  /// [voteGraph] A graph containing distribution of votes in the poll
  final StatisticalGraph voteGraph;

  static const String constructor = 'pollVoteStatistics';

  static PollVoteStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollVoteStatistics(
      voteGraph: StatisticalGraph.fromJson(
          json['vote_graph'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'vote_graph': voteGraph.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PollVoteStatistics &&
          const DeepCollectionEquality().equals(other.voteGraph, voteGraph));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(voteGraph)]);
}
