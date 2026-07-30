import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat theme based on an upgraded gift
@immutable
class ChatThemeGift extends ChatTheme {
  const ChatThemeGift({
    required this.giftTheme,
  });

  /// [giftTheme] The chat theme
  final GiftChatTheme giftTheme;

  static const String constructor = 'chatThemeGift';

  static ChatThemeGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatThemeGift(
      giftTheme:
          GiftChatTheme.fromJson(json['gift_theme'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift_theme': giftTheme.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
