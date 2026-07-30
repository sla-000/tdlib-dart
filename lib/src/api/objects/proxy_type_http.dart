// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A HTTP transparent proxy server
@immutable
class ProxyTypeHttp extends ProxyType {
  const ProxyTypeHttp({
    required this.username,
    required this.password,
    required this.httpOnly,
  });

  /// [username] Username for logging in; may be empty
  final String username;

  /// [password] Password for logging in; may be empty
  final String password;

  /// [httpOnly] Pass true if the proxy supports only HTTP requests and doesn't
  /// support transparent TCP connections via HTTP CONNECT method
  final bool httpOnly;

  static const String constructor = 'proxyTypeHttp';

  static ProxyTypeHttp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProxyTypeHttp(
      username: (json['username'] as String?) ?? '',
      password: (json['password'] as String?) ?? '',
      httpOnly: (json['http_only'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'username': username,
        'password': password,
        'http_only': httpOnly,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ProxyTypeHttp &&
          const DeepCollectionEquality().equals(other.username, username) &&
          const DeepCollectionEquality().equals(other.password, password) &&
          const DeepCollectionEquality().equals(other.httpOnly, httpOnly));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(username),
        const DeepCollectionEquality().hash(password),
        const DeepCollectionEquality().hash(httpOnly)
      ]);
}
