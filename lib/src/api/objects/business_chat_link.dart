// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a business chat link
@immutable
class BusinessChatLink extends TdObject {
  const BusinessChatLink({
    required this.link,
    required this.text,
    required this.title,
    required this.viewCount,
  });

  /// [link] The HTTPS link
  final String link;

  /// [text] Message draft text that will be added to the input field
  final FormattedText text;

  /// [title] Link title
  final String title;

  /// [viewCount] Number of times the link was used
  final int viewCount;

  static const String constructor = 'businessChatLink';

  static BusinessChatLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessChatLink(
      link: json['link'] as String,
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      title: json['title'] as String,
      viewCount: json['view_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'link': link,
        'text': text.toJson(),
        'title': title,
        'view_count': viewCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BusinessChatLink &&
          const DeepCollectionEquality().equals(other.link, link) &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.viewCount, viewCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(link),
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(viewCount)
      ]);
}
