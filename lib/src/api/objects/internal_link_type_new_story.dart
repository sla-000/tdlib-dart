// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to open the story posting interface
@immutable
class InternalLinkTypeNewStory extends InternalLinkType {
  const InternalLinkTypeNewStory({
    this.contentType,
  });

  /// [contentType] The type of the content of the story to post; may be null if
  /// unspecified
  final StoryContentType? contentType;

  static const String constructor = 'internalLinkTypeNewStory';

  static InternalLinkTypeNewStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeNewStory(
      contentType: StoryContentType.fromJson(
          json['content_type'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'content_type': contentType?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypeNewStory &&
          const DeepCollectionEquality()
              .equals(other.contentType, contentType));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(contentType)]);
}
