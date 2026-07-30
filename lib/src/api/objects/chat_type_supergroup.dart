// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A supergroup or channel (with unlimited members)
@immutable
class ChatTypeSupergroup extends ChatType {
  const ChatTypeSupergroup({
    required this.supergroupId,
    required this.isChannel,
  });

  /// [supergroupId] Supergroup or channel identifier
  final int supergroupId;

  /// [isChannel] True, if the supergroup is a channel
  final bool isChannel;

  static const String constructor = 'chatTypeSupergroup';

  static ChatTypeSupergroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatTypeSupergroup(
      supergroupId: (json['supergroup_id'] as int?) ?? 0,
      isChannel: (json['is_channel'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'is_channel': isChannel,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatTypeSupergroup &&
          const DeepCollectionEquality()
              .equals(other.supergroupId, supergroupId) &&
          const DeepCollectionEquality().equals(other.isChannel, isChannel));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(supergroupId),
        const DeepCollectionEquality().hash(isChannel)
      ]);
}
