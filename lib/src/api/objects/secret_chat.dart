// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a secret chat
@immutable
class SecretChat extends TdObject {
  const SecretChat({
    required this.id,
    required this.userId,
    required this.state,
    required this.isOutbound,
    required this.keyHash,
    required this.layer,
  });

  /// [id] Secret chat identifier
  final int id;

  /// [userId] Identifier of the chat partner
  final int userId;

  /// [state] State of the secret chat
  final SecretChatState state;

  /// [isOutbound] True, if the chat was created by the current user; false
  /// otherwise
  final bool isOutbound;

  /// [keyHash] Hash of the currently used key for comparison with the hash of
  /// the chat partner's key. This is a string of 36 little-endian bytes, which
  /// must be split into groups of 2 bits, each denoting a pixel of one of 4
  /// colors FFFFFF, D5E6F3, 2D5775, and 2F99C9. The pixels must be used to make
  /// a 12x12 square image filled from left to right, top to bottom.
  /// Alternatively, the first 32 bytes of the hash can be converted to the
  /// hexadecimal format and printed as 32 2-digit hex numbers
  final String keyHash;

  /// [layer] Secret chat layer; determines features supported by the chat
  /// partner's application. Nested text entities and underline and
  /// strikethrough entities are supported if the layer files bigger than 2000MB
  /// are supported if the layer
  final int layer;

  static const String constructor = 'secretChat';

  static SecretChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SecretChat(
      id: (json['id'] as int?) ?? 0,
      userId: (json['user_id'] as int?) ?? 0,
      state: SecretChatState.fromJson(json['state'] as Map<String, dynamic>?)!,
      isOutbound: (json['is_outbound'] as bool?) ?? false,
      keyHash: (json['key_hash'] as String?) ?? '',
      layer: (json['layer'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'user_id': userId,
        'state': state.toJson(),
        'is_outbound': isOutbound,
        'key_hash': keyHash,
        'layer': layer,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SecretChat &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.state, state) &&
          const DeepCollectionEquality().equals(other.isOutbound, isOutbound) &&
          const DeepCollectionEquality().equals(other.keyHash, keyHash) &&
          const DeepCollectionEquality().equals(other.layer, layer));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(state),
        const DeepCollectionEquality().hash(isOutbound),
        const DeepCollectionEquality().hash(keyHash),
        const DeepCollectionEquality().hash(layer)
      ]);
}
