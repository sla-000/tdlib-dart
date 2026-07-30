// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a list of found users
@immutable
class FoundUsers extends TdObject {
  const FoundUsers({
    required this.userIds,
    required this.nextOffset,
  });

  /// [userIds] Identifiers of the found users
  final List<int> userIds;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'foundUsers';

  static FoundUsers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FoundUsers(
      userIds: List<int>.from(
          ((json['user_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      nextOffset: json['next_offset'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_ids': userIds.map((item) => item).toList(),
        'next_offset': nextOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is FoundUsers &&
          const DeepCollectionEquality().equals(other.userIds, userIds) &&
          const DeepCollectionEquality().equals(other.nextOffset, nextOffset));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userIds),
        const DeepCollectionEquality().hash(nextOffset)
      ]);
}
