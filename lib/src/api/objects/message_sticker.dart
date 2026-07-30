// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A sticker message
@immutable
class MessageSticker extends MessageContent {
  const MessageSticker({
    required this.sticker,
    required this.isPremium,
  });

  /// [sticker] The sticker description
  final Sticker sticker;

  /// [isPremium] True, if premium animation of the sticker must be played
  final bool isPremium;

  static const String constructor = 'messageSticker';

  static MessageSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSticker(
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?)!,
      isPremium: json['is_premium'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        'is_premium': isPremium,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageSticker &&
          const DeepCollectionEquality().equals(other.sticker, sticker) &&
          const DeepCollectionEquality().equals(other.isPremium, isPremium));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(sticker),
        const DeepCollectionEquality().hash(isPremium)
      ]);
}
