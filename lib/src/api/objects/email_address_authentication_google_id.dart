// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An authentication token received through Google ID
@immutable
class EmailAddressAuthenticationGoogleId extends EmailAddressAuthentication {
  const EmailAddressAuthenticationGoogleId({
    required this.token,
  });

  /// [token] The token
  final String token;

  static const String constructor = 'emailAddressAuthenticationGoogleId';

  static EmailAddressAuthenticationGoogleId? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmailAddressAuthenticationGoogleId(
      token: (json['token'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'token': token,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EmailAddressAuthenticationGoogleId &&
          const DeepCollectionEquality().equals(other.token, token));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(token)]);
}
