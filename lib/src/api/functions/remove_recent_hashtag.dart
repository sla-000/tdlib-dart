// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Removes a hashtag from the list of recently used hashtags
/// Returns [Ok]
@immutable
class RemoveRecentHashtag extends TdFunction {
  const RemoveRecentHashtag({
    required this.hashtag,
  });

  /// [hashtag] Hashtag to delete
  final String hashtag;

  static const String constructor = 'removeRecentHashtag';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'hashtag': hashtag,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RemoveRecentHashtag &&
          const DeepCollectionEquality().equals(other.hashtag, hashtag));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(hashtag)]);
}
