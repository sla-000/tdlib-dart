// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram call reflector
@immutable
class CallServerTypeTelegramReflector extends CallServerType {
  const CallServerTypeTelegramReflector({
    required this.peerTag,
    required this.isTcp,
  });

  /// [peerTag] A peer tag to be used with the reflector
  final String peerTag;

  /// [isTcp] True, if the server uses TCP instead of UDP
  final bool isTcp;

  static const String constructor = 'callServerTypeTelegramReflector';

  static CallServerTypeTelegramReflector? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallServerTypeTelegramReflector(
      peerTag: (json['peer_tag'] as String?) ?? '',
      isTcp: (json['is_tcp'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'peer_tag': peerTag,
        'is_tcp': isTcp,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CallServerTypeTelegramReflector &&
          const DeepCollectionEquality().equals(other.peerTag, peerTag) &&
          const DeepCollectionEquality().equals(other.isTcp, isTcp));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(peerTag),
        const DeepCollectionEquality().hash(isTcp)
      ]);
}
