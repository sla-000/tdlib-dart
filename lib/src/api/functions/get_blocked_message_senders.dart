// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns users and chats that were blocked by the current user
/// Returns [MessageSenders]
@immutable
class GetBlockedMessageSenders extends TdFunction {
  const GetBlockedMessageSenders({
    required this.blockList,
    required this.offset,
    required this.limit,
  });

  /// [blockList] Block list from which to return users
  final BlockList blockList;

  /// [offset] Number of users and chats to skip in the result; must be
  /// non-negative
  final int offset;

  /// [limit] The maximum number of users and chats to return; up to 100
  final int limit;

  static const String constructor = 'getBlockedMessageSenders';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'block_list': blockList.toJson(),
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetBlockedMessageSenders &&
          const DeepCollectionEquality().equals(other.blockList, blockList) &&
          const DeepCollectionEquality().equals(other.offset, offset) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(blockList),
        const DeepCollectionEquality().hash(offset),
        const DeepCollectionEquality().hash(limit)
      ]);
}
