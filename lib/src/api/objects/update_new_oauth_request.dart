// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An OAuth authorization request was received
@immutable
class UpdateNewOauthRequest extends Update {
  const UpdateNewOauthRequest({
    required this.domain,
    required this.location,
    required this.url,
  });

  /// [domain] A domain of the URL where the user authorizes
  final String domain;

  /// [location] Human-readable description of a country and a region from which
  /// the authorization is performed, based on the IP address
  final String location;

  /// [url] The URL to pass to getOauthLinkInfo; the link is valid for 60
  /// seconds
  final String url;

  static const String constructor = 'updateNewOauthRequest';

  static UpdateNewOauthRequest? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewOauthRequest(
      domain: (json['domain'] as String?) ?? '',
      location: (json['location'] as String?) ?? '',
      url: (json['url'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'domain': domain,
        'location': location,
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateNewOauthRequest &&
          const DeepCollectionEquality().equals(other.domain, domain) &&
          const DeepCollectionEquality().equals(other.location, location) &&
          const DeepCollectionEquality().equals(other.url, url));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(domain),
        const DeepCollectionEquality().hash(location),
        const DeepCollectionEquality().hash(url)
      ]);
}
