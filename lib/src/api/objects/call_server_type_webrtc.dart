// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A WebRTC server
@immutable
class CallServerTypeWebrtc extends CallServerType {
  const CallServerTypeWebrtc({
    required this.username,
    required this.password,
    required this.supportsTurn,
    required this.supportsStun,
  });

  /// [username] Username to be used for authentication
  final String username;

  /// [password] Authentication password
  final String password;

  /// [supportsTurn] True, if the server supports TURN
  final bool supportsTurn;

  /// [supportsStun] True, if the server supports STUN
  final bool supportsStun;

  static const String constructor = 'callServerTypeWebrtc';

  static CallServerTypeWebrtc? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallServerTypeWebrtc(
      username: (json['username'] as String?) ?? '',
      password: (json['password'] as String?) ?? '',
      supportsTurn: (json['supports_turn'] as bool?) ?? false,
      supportsStun: (json['supports_stun'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'username': username,
        'password': password,
        'supports_turn': supportsTurn,
        'supports_stun': supportsStun,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CallServerTypeWebrtc &&
          const DeepCollectionEquality().equals(other.username, username) &&
          const DeepCollectionEquality().equals(other.password, password) &&
          const DeepCollectionEquality()
              .equals(other.supportsTurn, supportsTurn) &&
          const DeepCollectionEquality()
              .equals(other.supportsStun, supportsStun));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(username),
        const DeepCollectionEquality().hash(password),
        const DeepCollectionEquality().hash(supportsTurn),
        const DeepCollectionEquality().hash(supportsStun)
      ]);
}
