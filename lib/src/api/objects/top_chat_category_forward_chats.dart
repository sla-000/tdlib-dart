// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A category containing frequently used chats used to forward messages
@immutable
class TopChatCategoryForwardChats extends TopChatCategory {
  const TopChatCategoryForwardChats();

  static const String constructor = 'topChatCategoryForwardChats';

  static TopChatCategoryForwardChats? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryForwardChats();
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
          other is TopChatCategoryForwardChats);

  @override
  int get hashCode => runtimeType.hashCode;
}
