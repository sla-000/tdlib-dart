import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a level of features for a message sent in a live story group
/// call
@immutable
class GroupCallMessageLevel extends TdObject {
  const GroupCallMessageLevel({
    required this.minStarCount,
    required this.pinDuration,
    required this.maxTextLength,
    required this.maxCustomEmojiCount,
    required this.firstColor,
    required this.secondColor,
    required this.backgroundColor,
  });

  /// [minStarCount] The minimum number of Telegram Stars required to get
  /// features of the level
  final int minStarCount;

  /// [pinDuration] The amount of time the message of this level will be pinned,
  /// in seconds
  final int pinDuration;

  /// [maxTextLength] The maximum allowed length of the message text
  final int maxTextLength;

  /// [maxCustomEmojiCount] The maximum allowed number of custom emoji in the
  /// message text
  final int maxCustomEmojiCount;

  /// [firstColor] The first color used to show the message text in the RGB
  /// format
  final int firstColor;

  /// [secondColor] The second color used to show the message text in the RGB
  /// format
  final int secondColor;

  /// [backgroundColor] Background color for the message the RGB format
  final int backgroundColor;

  static const String constructor = 'groupCallMessageLevel';

  static GroupCallMessageLevel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallMessageLevel(
      minStarCount: json['min_star_count'] as int,
      pinDuration: json['pin_duration'] as int,
      maxTextLength: json['max_text_length'] as int,
      maxCustomEmojiCount: json['max_custom_emoji_count'] as int,
      firstColor: json['first_color'] as int,
      secondColor: json['second_color'] as int,
      backgroundColor: json['background_color'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'min_star_count': minStarCount,
        'pin_duration': pinDuration,
        'max_text_length': maxTextLength,
        'max_custom_emoji_count': maxCustomEmojiCount,
        'first_color': firstColor,
        'second_color': secondColor,
        'background_color': backgroundColor,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
