// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user is picking a sticker to send
@immutable
class ChatActionChoosingSticker extends ChatAction {
  const ChatActionChoosingSticker();

  static const String constructor = 'chatActionChoosingSticker';

  static ChatActionChoosingSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionChoosingSticker();
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
      (other.runtimeType == runtimeType && other is ChatActionChoosingSticker);

  @override
  int get hashCode => runtimeType.hashCode;
}
