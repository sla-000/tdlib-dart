// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A button that opens a specified URL
@immutable
class InlineKeyboardButtonTypeUrl extends InlineKeyboardButtonType {
  const InlineKeyboardButtonTypeUrl({
    required this.url,
  });

  /// [url] HTTP or tg:// URL to open. If the link is of the type
  /// internalLinkTypeWebApp, then the button must be marked as a Web App button
  final String url;

  static const String constructor = 'inlineKeyboardButtonTypeUrl';

  static InlineKeyboardButtonTypeUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeUrl(
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
          other is InlineKeyboardButtonTypeUrl &&
          const DeepCollectionEquality().equals(other.url, url));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(url)]);
}
