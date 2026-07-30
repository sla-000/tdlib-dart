// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A basic group was upgraded to a supergroup and was deactivated as the
/// result
@immutable
class MessageChatUpgradeTo extends MessageContent {
  const MessageChatUpgradeTo({
    required this.supergroupId,
  });

  /// [supergroupId] Identifier of the supergroup to which the basic group was
  /// upgraded
  final int supergroupId;

  static const String constructor = 'messageChatUpgradeTo';

  static MessageChatUpgradeTo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatUpgradeTo(
      supergroupId: (json['supergroup_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageChatUpgradeTo &&
          const DeepCollectionEquality()
              .equals(other.supergroupId, supergroupId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(supergroupId)]);
}
