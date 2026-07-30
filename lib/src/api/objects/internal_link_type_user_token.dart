// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a user by a temporary token. Call searchUserByToken
/// with the given token to process the link. If the user is found, then call
/// createPrivateChat and open the chat
@immutable
class InternalLinkTypeUserToken extends InternalLinkType {
  const InternalLinkTypeUserToken({
    required this.token,
  });

  /// [token] The token
  final String token;

  static const String constructor = 'internalLinkTypeUserToken';

  static InternalLinkTypeUserToken? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeUserToken(
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
          other is InternalLinkTypeUserToken &&
          const DeepCollectionEquality().equals(other.token, token));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(token)]);
}
