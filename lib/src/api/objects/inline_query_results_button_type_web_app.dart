// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes the button that opens a Web App by calling getWebAppUrl
@immutable
class InlineQueryResultsButtonTypeWebApp extends InlineQueryResultsButtonType {
  const InlineQueryResultsButtonTypeWebApp({
    required this.url,
  });

  /// [url] An HTTP URL to pass to getWebAppUrl
  final String url;

  static const String constructor = 'inlineQueryResultsButtonTypeWebApp';

  static InlineQueryResultsButtonTypeWebApp? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultsButtonTypeWebApp(
      url: json['url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InlineQueryResultsButtonTypeWebApp &&
          const DeepCollectionEquality().equals(other.url, url));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(url)]);
}
