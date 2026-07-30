// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a bot's answer to a callback query
@immutable
class CallbackQueryAnswer extends TdObject {
  const CallbackQueryAnswer({
    required this.text,
    required this.showAlert,
    required this.url,
  });

  /// [text] Text of the answer
  final String text;

  /// [showAlert] True, if an alert must be shown to the user instead of a toast
  /// notification
  final bool showAlert;

  /// [url] URL to be opened
  final String url;

  static const String constructor = 'callbackQueryAnswer';

  static CallbackQueryAnswer? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallbackQueryAnswer(
      text: json['text'] as String,
      showAlert: json['show_alert'] as bool,
      url: json['url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        'show_alert': showAlert,
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CallbackQueryAnswer &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.showAlert, showAlert) &&
          const DeepCollectionEquality().equals(other.url, url));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(showAlert),
        const DeepCollectionEquality().hash(url)
      ]);
}
