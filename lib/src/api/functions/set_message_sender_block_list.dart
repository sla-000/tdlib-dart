// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the block list of a message sender. Currently, only users and
/// supergroup chats can be blocked
/// Returns [Ok]
@immutable
class SetMessageSenderBlockList extends TdFunction {
  const SetMessageSenderBlockList({
    required this.senderId,
    this.blockList,
  });

  /// [senderId] Identifier of a message sender to block/unblock
  final MessageSender senderId;

  /// [blockList] New block list for the message sender; pass null to unblock
  /// the message sender
  final BlockList? blockList;

  static const String constructor = 'setMessageSenderBlockList';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sender_id': senderId.toJson(),
        'block_list': blockList?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetMessageSenderBlockList &&
          const DeepCollectionEquality().equals(other.senderId, senderId) &&
          const DeepCollectionEquality().equals(other.blockList, blockList));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(senderId),
        const DeepCollectionEquality().hash(blockList)
      ]);
}
