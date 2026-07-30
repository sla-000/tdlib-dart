// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a URL linking to an internal Telegram entity
@immutable
class TMeUrl extends TdObject {
  const TMeUrl({
    required this.url,
    required this.type,
  });

  /// [url] URL
  final String url;

  /// [type] Type of the URL
  final TMeUrlType type;

  static const String constructor = 'tMeUrl';

  static TMeUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TMeUrl(
      url: (json['url'] as String?) ?? '',
      type: TMeUrlType.fromJson(json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TMeUrl &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(type)
      ]);
}
