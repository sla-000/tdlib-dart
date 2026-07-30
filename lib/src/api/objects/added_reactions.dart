// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a list of reactions added to a message
@immutable
class AddedReactions extends TdObject {
  const AddedReactions({
    required this.totalCount,
    required this.reactions,
    required this.nextOffset,
  });

  /// [totalCount] The total number of found reactions
  final int totalCount;

  /// [reactions] The list of added reactions
  final List<AddedReaction> reactions;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'addedReactions';

  static AddedReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AddedReactions(
      totalCount: (json['total_count'] as int?) ?? 0,
      reactions: List<AddedReaction>.from(((json['reactions']
                  as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => AddedReaction.fromJson(item as Map<String, dynamic>?))
          .toList()),
      nextOffset: (json['next_offset'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'reactions': reactions.map((item) => item.toJson()).toList(),
        'next_offset': nextOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AddedReactions &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount) &&
          const DeepCollectionEquality().equals(other.reactions, reactions) &&
          const DeepCollectionEquality().equals(other.nextOffset, nextOffset));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(totalCount),
        const DeepCollectionEquality().hash(reactions),
        const DeepCollectionEquality().hash(nextOffset)
      ]);
}
