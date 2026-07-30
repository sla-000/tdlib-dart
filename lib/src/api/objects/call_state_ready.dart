// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The call is ready to use
@immutable
class CallStateReady extends CallState {
  const CallStateReady({
    required this.protocol,
    required this.servers,
    required this.config,
    required this.encryptionKey,
    required this.emojis,
    required this.allowP2p,
    required this.isGroupCallSupported,
    required this.customParameters,
  });

  /// [protocol] Call protocols supported by the other call participant
  final CallProtocol protocol;

  /// [servers] List of available call servers
  final List<CallServer> servers;

  /// [config] A JSON-encoded call config
  final String config;

  /// [encryptionKey] Call encryption key
  final String encryptionKey;

  /// [emojis] Encryption key fingerprint represented as 4 emoji
  final List<String> emojis;

  /// [allowP2p] True, if peer-to-peer connection is allowed by users privacy
  /// settings
  final bool allowP2p;

  /// [isGroupCallSupported] True, if the other party supports upgrading of the
  /// call to a group call
  final bool isGroupCallSupported;

  /// [customParameters] Custom JSON-encoded call parameters to be passed to
  /// tgcalls
  final String customParameters;

  static const String constructor = 'callStateReady';

  static CallStateReady? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallStateReady(
      protocol:
          CallProtocol.fromJson(json['protocol'] as Map<String, dynamic>?)!,
      servers: List<CallServer>.from(
          ((json['servers'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => CallServer.fromJson(item as Map<String, dynamic>?))
              .toList()),
      config: (json['config'] as String?) ?? '',
      encryptionKey: (json['encryption_key'] as String?) ?? '',
      emojis: List<String>.from(
          ((json['emojis'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item as String)
              .toList()),
      allowP2p: (json['allow_p2p'] as bool?) ?? false,
      isGroupCallSupported: (json['is_group_call_supported'] as bool?) ?? false,
      customParameters: (json['custom_parameters'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'protocol': protocol.toJson(),
        'servers': servers.map((item) => item.toJson()).toList(),
        'config': config,
        'encryption_key': encryptionKey,
        'emojis': emojis.map((item) => item).toList(),
        'allow_p2p': allowP2p,
        'is_group_call_supported': isGroupCallSupported,
        'custom_parameters': customParameters,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CallStateReady &&
          const DeepCollectionEquality().equals(other.protocol, protocol) &&
          const DeepCollectionEquality().equals(other.servers, servers) &&
          const DeepCollectionEquality().equals(other.config, config) &&
          const DeepCollectionEquality()
              .equals(other.encryptionKey, encryptionKey) &&
          const DeepCollectionEquality().equals(other.emojis, emojis) &&
          const DeepCollectionEquality().equals(other.allowP2p, allowP2p) &&
          const DeepCollectionEquality()
              .equals(other.isGroupCallSupported, isGroupCallSupported) &&
          const DeepCollectionEquality()
              .equals(other.customParameters, customParameters));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(protocol),
        const DeepCollectionEquality().hash(servers),
        const DeepCollectionEquality().hash(config),
        const DeepCollectionEquality().hash(encryptionKey),
        const DeepCollectionEquality().hash(emojis),
        const DeepCollectionEquality().hash(allowP2p),
        const DeepCollectionEquality().hash(isGroupCallSupported),
        const DeepCollectionEquality().hash(customParameters)
      ]);
}
