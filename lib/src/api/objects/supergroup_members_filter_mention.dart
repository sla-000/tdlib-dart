import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns users which can be mentioned in the supergroup
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
      query: json['query'] as String,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
