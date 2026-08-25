// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns users who can be mentioned in the supergroup
@immutable
class SupergroupMembersFilterMention extends SupergroupMembersFilter {
  const SupergroupMembersFilterMention({
    required this.query,
    this.topicId,
  });

  /// [query] Query to search for
  final String query;

  /// [topicId] Identifier of the topic in which the users will be mentioned;
  /// pass null if none
  final MessageTopic? topicId;

  static const String constructor = 'supergroupMembersFilterMention';

  static SupergroupMembersFilterMention? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SupergroupMembersFilterMention(
      query: (json['query'] as String?) ?? '',
      topicId: MessageTopic.fromJson(json['topic_id'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'query': query,
        'topic_id': topicId?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SupergroupMembersFilterMention &&
          const DeepCollectionEquality().equals(other.query, query) &&
          const DeepCollectionEquality().equals(other.topicId, topicId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(query),
        const DeepCollectionEquality().hash(topicId)
      ]);
}
