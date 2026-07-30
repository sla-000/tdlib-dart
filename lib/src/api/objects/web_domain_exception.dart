import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an exception for built-in browser usage
@immutable
class WebDomainException extends TdObject {
  const WebDomainException({
    required this.url,
    required this.domain,
    required this.title,
    required this.faviconCustomEmojiId,
  });

  /// [url] URL for which the exception is done
  final String url;

  /// [domain] Domain of the URL. All URLs on the domain and subdomains of the
  /// domain are subject to the exception
  final String domain;

  /// [title] Title of the website
  final String title;

  /// [faviconCustomEmojiId] Identifier of the custom emoji with favicon of the
  /// website; may be 0 if unknown, in which case the first letter of the domain
  /// must be used
  final int faviconCustomEmojiId;

  static const String constructor = 'webDomainException';

  static WebDomainException? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WebDomainException(
      url: json['url'] as String,
      domain: json['domain'] as String,
      title: json['title'] as String,
      faviconCustomEmojiId: int.tryParse(json['favicon_custom_emoji_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'domain': domain,
        'title': title,
        'favicon_custom_emoji_id': faviconCustomEmojiId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
