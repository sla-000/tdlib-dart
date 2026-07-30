// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A digit-only authentication code is delivered to https://fragment.com. The
/// user must be logged in there via a wallet owning the phone number's NFT
@immutable
class AuthenticationCodeTypeFragment extends AuthenticationCodeType {
  const AuthenticationCodeTypeFragment({
    required this.url,
    required this.length,
  });

  /// [url] URL to open to receive the code
  final String url;

  /// [length] Length of the code
  final int length;

  static const String constructor = 'authenticationCodeTypeFragment';

  static AuthenticationCodeTypeFragment? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeFragment(
      url: (json['url'] as String?) ?? '',
      length: (json['length'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'length': length,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AuthenticationCodeTypeFragment &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality().equals(other.length, length));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(length)
      ]);
}
