// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes theme settings
@immutable
class ThemeSettings extends TdObject {
  const ThemeSettings({
    required this.baseTheme,
    required this.accentColor,
    this.background,
    this.outgoingMessageFill,
    required this.animateOutgoingMessageFill,
    required this.outgoingMessageAccentColor,
  });

  /// [baseTheme] Base theme for this theme
  final BuiltInTheme baseTheme;

  /// [accentColor] Theme accent color in ARGB format
  final int accentColor;

  /// [background] The background to be used in chats; may be null
  final Background? background;

  /// [outgoingMessageFill] The fill to be used as a background for outgoing
  /// messages; may be null if the fill from the base theme must be used instead
  final BackgroundFill? outgoingMessageFill;

  /// [animateOutgoingMessageFill] If true, the freeform gradient fill needs to
  /// be animated on every sent message
  final bool animateOutgoingMessageFill;

  /// [outgoingMessageAccentColor] Accent color of outgoing messages in ARGB
  /// format
  final int outgoingMessageAccentColor;

  static const String constructor = 'themeSettings';

  static ThemeSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ThemeSettings(
      baseTheme:
          BuiltInTheme.fromJson(json['base_theme'] as Map<String, dynamic>?)!,
      accentColor: (json['accent_color'] as int?) ?? 0,
      background:
          Background.fromJson(json['background'] as Map<String, dynamic>?),
      outgoingMessageFill: BackgroundFill.fromJson(
          json['outgoing_message_fill'] as Map<String, dynamic>?),
      animateOutgoingMessageFill:
          (json['animate_outgoing_message_fill'] as bool?) ?? false,
      outgoingMessageAccentColor:
          (json['outgoing_message_accent_color'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'base_theme': baseTheme.toJson(),
        'accent_color': accentColor,
        'background': background?.toJson(),
        'outgoing_message_fill': outgoingMessageFill?.toJson(),
        'animate_outgoing_message_fill': animateOutgoingMessageFill,
        'outgoing_message_accent_color': outgoingMessageAccentColor,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ThemeSettings &&
          const DeepCollectionEquality().equals(other.baseTheme, baseTheme) &&
          const DeepCollectionEquality()
              .equals(other.accentColor, accentColor) &&
          const DeepCollectionEquality().equals(other.background, background) &&
          const DeepCollectionEquality()
              .equals(other.outgoingMessageFill, outgoingMessageFill) &&
          const DeepCollectionEquality().equals(
              other.animateOutgoingMessageFill, animateOutgoingMessageFill) &&
          const DeepCollectionEquality().equals(
              other.outgoingMessageAccentColor, outgoingMessageAccentColor));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(baseTheme),
        const DeepCollectionEquality().hash(accentColor),
        const DeepCollectionEquality().hash(background),
        const DeepCollectionEquality().hash(outgoingMessageFill),
        const DeepCollectionEquality().hash(animateOutgoingMessageFill),
        const DeepCollectionEquality().hash(outgoingMessageAccentColor)
      ]);
}
