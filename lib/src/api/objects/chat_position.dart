// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a position of a chat in a chat list
@immutable
class ChatPosition extends TdObject {
  const ChatPosition({
    required this.list,
    required this.order,
    required this.isPinned,
    this.source,
  });

  /// [list] The chat list
  final ChatList list;

  /// [order] A parameter used to determine order of the chat in the chat list.
  /// Chats must be sorted by the pair (order, chat.id) in descending order
  final int order;

  /// [isPinned] True, if the chat is pinned in the chat list
  final bool isPinned;

  /// [source] Source of the chat in the chat list; may be null
  final ChatSource? source;

  static const String constructor = 'chatPosition';

  static ChatPosition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatPosition(
      list: ChatList.fromJson(json['list'] as Map<String, dynamic>?)!,
      order: (json['order'] is int
              ? json['order'] as int
              : int.tryParse(json['order']?.toString() ?? '')) ??
          0,
      isPinned: (json['is_pinned'] as bool?) ?? false,
      source: ChatSource.fromJson(json['source'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'list': list.toJson(),
        'order': order.toString(),
        'is_pinned': isPinned,
        'source': source?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatPosition &&
          const DeepCollectionEquality().equals(other.list, list) &&
          const DeepCollectionEquality().equals(other.order, order) &&
          const DeepCollectionEquality().equals(other.isPinned, isPinned) &&
          const DeepCollectionEquality().equals(other.source, source));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(list),
        const DeepCollectionEquality().hash(order),
        const DeepCollectionEquality().hash(isPinned),
        const DeepCollectionEquality().hash(source)
      ]);
}
