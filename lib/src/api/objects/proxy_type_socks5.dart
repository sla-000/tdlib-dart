// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A SOCKS5 proxy server
@immutable
class ProxyTypeSocks5 extends ProxyType {
  const ProxyTypeSocks5({
    required this.username,
    required this.password,
  });

  /// [username] Username for logging in; may be empty
  final String username;

  /// [password] Password for logging in; may be empty
  final String password;

  static const String constructor = 'proxyTypeSocks5';

  static ProxyTypeSocks5? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProxyTypeSocks5(
      username: json['username'] as String,
      password: json['password'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'username': username,
        'password': password,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ProxyTypeSocks5 &&
          const DeepCollectionEquality().equals(other.username, username) &&
          const DeepCollectionEquality().equals(other.password, password));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(username),
        const DeepCollectionEquality().hash(password)
      ]);
}
