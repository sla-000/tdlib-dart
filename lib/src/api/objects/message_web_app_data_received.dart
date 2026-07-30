// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Data from a Web App has been received; for bots only
@immutable
class MessageWebAppDataReceived extends MessageContent {
  const MessageWebAppDataReceived({
    required this.buttonText,
    required this.data,
  });

  /// [buttonText] Text of the keyboardButtonTypeWebApp button, which opened the
  /// Web App
  final String buttonText;

  /// [data] The data
  final String data;

  static const String constructor = 'messageWebAppDataReceived';

  static MessageWebAppDataReceived? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageWebAppDataReceived(
      buttonText: json['button_text'] as String,
      data: json['data'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'button_text': buttonText,
        'data': data,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageWebAppDataReceived &&
          const DeepCollectionEquality().equals(other.buttonText, buttonText) &&
          const DeepCollectionEquality().equals(other.data, data));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(buttonText),
        const DeepCollectionEquality().hash(data)
      ]);
}
