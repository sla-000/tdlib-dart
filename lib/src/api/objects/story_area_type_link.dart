// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An area pointing to a HTTP or tg:// link
@immutable
class StoryAreaTypeLink extends StoryAreaType {
  const StoryAreaTypeLink({
    required this.url,
  });

  /// [url] HTTP or tg:// URL to be opened when the area is clicked
  final String url;

  static const String constructor = 'storyAreaTypeLink';

  static StoryAreaTypeLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryAreaTypeLink(
      url: (json['url'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StoryAreaTypeLink &&
          const DeepCollectionEquality().equals(other.url, url));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(url)]);
}
