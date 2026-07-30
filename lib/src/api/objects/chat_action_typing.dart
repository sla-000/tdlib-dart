// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user is typing a message
@immutable
class ChatActionTyping extends ChatAction {
  const ChatActionTyping();

  static const String constructor = 'chatActionTyping';

  static ChatActionTyping? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionTyping();
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
      (other.runtimeType == runtimeType && other is ChatActionTyping);

  @override
  int get hashCode => runtimeType.hashCode;
}
