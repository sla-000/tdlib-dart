// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A newly created basic group
@immutable
class MessageBasicGroupChatCreate extends MessageContent {
  const MessageBasicGroupChatCreate({
    required this.title,
    required this.memberUserIds,
  });

  /// [title] Title of the basic group
  final String title;

  /// [memberUserIds] User identifiers of members in the basic group
  final List<int> memberUserIds;

  static const String constructor = 'messageBasicGroupChatCreate';

  static MessageBasicGroupChatCreate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageBasicGroupChatCreate(
      title: (json['title'] as String?) ?? '',
      memberUserIds: List<int>.from(
          ((json['member_user_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'member_user_ids': memberUserIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageBasicGroupChatCreate &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality()
              .equals(other.memberUserIds, memberUserIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(memberUserIds)
      ]);
}
