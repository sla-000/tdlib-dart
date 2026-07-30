// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A button that opens a specified URL and automatically authorize the
/// current user by calling getLoginUrlInfo
@immutable
class InlineKeyboardButtonTypeLoginUrl extends InlineKeyboardButtonType {
  const InlineKeyboardButtonTypeLoginUrl({
    required this.url,
    required this.id,
    required this.forwardText,
  });

  /// [url] An HTTP URL to pass to getLoginUrlInfo
  final String url;

  /// [id] Unique button identifier
  final int id;

  /// [forwardText] If non-empty, new text of the button in forwarded messages
  final String forwardText;

  static const String constructor = 'inlineKeyboardButtonTypeLoginUrl';

  static InlineKeyboardButtonTypeLoginUrl? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeLoginUrl(
      url: json['url'] as String,
      id: json['id'] as int,
      forwardText: json['forward_text'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'id': id,
        'forward_text': forwardText,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InlineKeyboardButtonTypeLoginUrl &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality()
              .equals(other.forwardText, forwardText));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(forwardText)
      ]);
}
