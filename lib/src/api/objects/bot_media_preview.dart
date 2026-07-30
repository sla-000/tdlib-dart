// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes media previews of a bot
@immutable
class BotMediaPreview extends TdObject {
  const BotMediaPreview({
    required this.date,
    required this.content,
  });

  /// [date] Point in time (Unix timestamp) when the preview was added or
  /// changed last time
  final int date;

  /// [content] Content of the preview; may only be of the types
  /// storyContentPhoto, storyContentVideo, or storyContentUnsupported
  final StoryContent content;

  static const String constructor = 'botMediaPreview';

  static BotMediaPreview? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotMediaPreview(
      date: json['date'] as int,
      content: StoryContent.fromJson(json['content'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'date': date,
        'content': content.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BotMediaPreview &&
          const DeepCollectionEquality().equals(other.date, date) &&
          const DeepCollectionEquality().equals(other.content, content));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(content)
      ]);
}
