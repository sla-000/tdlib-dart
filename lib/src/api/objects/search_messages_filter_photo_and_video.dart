// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns only photo and video messages
@immutable
class SearchMessagesFilterPhotoAndVideo extends SearchMessagesFilter {
  const SearchMessagesFilterPhotoAndVideo();

  static const String constructor = 'searchMessagesFilterPhotoAndVideo';

  static SearchMessagesFilterPhotoAndVideo? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterPhotoAndVideo();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SearchMessagesFilterPhotoAndVideo);

  @override
  int get hashCode => runtimeType.hashCode;
}
