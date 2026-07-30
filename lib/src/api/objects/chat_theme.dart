// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a chat theme
@immutable
abstract class ChatTheme extends TdObject {
  const ChatTheme();

  static const String constructor = 'chatTheme';

  /// Inherited by:
  /// [ChatThemeEmoji]
  /// [ChatThemeGift]
  static ChatTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatThemeEmoji.constructor:
        return ChatThemeEmoji.fromJson(json);
      case ChatThemeGift.constructor:
        return ChatThemeGift.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ChatTheme);

  @override
  int get hashCode => runtimeType.hashCode;
}
