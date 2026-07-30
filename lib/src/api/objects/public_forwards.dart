// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a list of public forwards and reposts as a story of a message
/// or a story
@immutable
class PublicForwards extends TdObject {
  const PublicForwards({
    required this.totalCount,
    required this.forwards,
    required this.nextOffset,
  });

  /// [totalCount] Approximate total number of messages and stories found
  final int totalCount;

  /// [forwards] List of found public forwards and reposts
  final List<PublicForward> forwards;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'publicForwards';

  static PublicForwards? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicForwards(
      totalCount: (json['total_count'] as int?) ?? 0,
      forwards: List<PublicForward>.from(((json['forwards']
                  as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => PublicForward.fromJson(item as Map<String, dynamic>?))
          .toList()),
      nextOffset: (json['next_offset'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'forwards': forwards.map((item) => item.toJson()).toList(),
        'next_offset': nextOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PublicForwards &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount) &&
          const DeepCollectionEquality().equals(other.forwards, forwards) &&
          const DeepCollectionEquality().equals(other.nextOffset, nextOffset));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(totalCount),
        const DeepCollectionEquality().hash(forwards),
        const DeepCollectionEquality().hash(nextOffset)
      ]);
}
