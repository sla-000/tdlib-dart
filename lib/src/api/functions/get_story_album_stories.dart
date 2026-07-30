import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the list of stories added to the given story album. For optimal
/// performance, the number of returned stories is chosen by TDLib
/// Returns [Stories]
@immutable
class GetStoryAlbumStories extends TdFunction {
  const GetStoryAlbumStories({
    required this.chatId,
    required this.storyAlbumId,
    required this.offset,
    required this.limit,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [storyAlbumId] Story album identifier
  final int storyAlbumId;

  /// [offset] Offset of the first entry to return; use 0 to get results from
  /// the first album story
  final int offset;

  /// [limit] The maximum number of stories to be returned. For optimal
  /// performance, the number of returned stories is chosen by TDLib and can be
  /// smaller than the specified limit
  final int limit;

  static const String constructor = 'getStoryAlbumStories';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'story_album_id': storyAlbumId,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
