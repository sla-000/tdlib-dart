// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns recently searched for hashtags or cashtags by their prefix
/// Returns [Hashtags]
@immutable
class GetSearchedForTags extends TdFunction {
  const GetSearchedForTags({
    required this.tagPrefix,
    required this.limit,
  });

  /// [tagPrefix] Prefix of hashtags or cashtags to return
  final String tagPrefix;

  /// [limit] The maximum number of items to be returned
  final int limit;

  static const String constructor = 'getSearchedForTags';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'tag_prefix': tagPrefix,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetSearchedForTags &&
          const DeepCollectionEquality().equals(other.tagPrefix, tagPrefix) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(tagPrefix),
        const DeepCollectionEquality().hash(limit)
      ]);
}
