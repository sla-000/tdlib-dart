// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains an HTTPS URL, which can be used to get information about a user
@immutable
class UserLink extends TdObject {
  const UserLink({
    required this.url,
    required this.expiresIn,
  });

  /// [url] The URL
  final String url;

  /// [expiresIn] Left time for which the link is valid, in seconds; 0 if the
  /// link is a public username link
  final int expiresIn;

  static const String constructor = 'userLink';

  static UserLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserLink(
      url: (json['url'] as String?) ?? '',
      expiresIn: (json['expires_in'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'expires_in': expiresIn,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UserLink &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality().equals(other.expiresIn, expiresIn));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(expiresIn)
      ]);
}
