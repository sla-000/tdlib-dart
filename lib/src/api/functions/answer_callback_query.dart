// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets the result of a callback query; for bots only
/// Returns [Ok]
@immutable
class AnswerCallbackQuery extends TdFunction {
  const AnswerCallbackQuery({
    required this.callbackQueryId,
    required this.text,
    required this.showAlert,
    required this.url,
    required this.cacheTime,
  });

  /// [callbackQueryId] Identifier of the callback query
  final int callbackQueryId;

  /// [text] Text of the answer
  final String text;

  /// [showAlert] Pass true to show an alert to the user instead of a toast
  /// notification
  final bool showAlert;

  /// [url] URL to be opened
  final String url;

  /// [cacheTime] Time during which the result of the query can be cached, in
  /// seconds
  final int cacheTime;

  static const String constructor = 'answerCallbackQuery';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'callback_query_id': callbackQueryId.toString(),
        'text': text,
        'show_alert': showAlert,
        'url': url,
        'cache_time': cacheTime,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AnswerCallbackQuery &&
          const DeepCollectionEquality()
              .equals(other.callbackQueryId, callbackQueryId) &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.showAlert, showAlert) &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality().equals(other.cacheTime, cacheTime));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(callbackQueryId),
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(showAlert),
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(cacheTime)
      ]);
}
