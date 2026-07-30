// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends data received from a keyboardButtonTypeWebApp Web App to a bot
/// Returns [Ok]
@immutable
class SendWebAppData extends TdFunction {
  const SendWebAppData({
    required this.botUserId,
    required this.buttonText,
    required this.data,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [buttonText] Text of the keyboardButtonTypeWebApp button, which opened the
  /// Web App
  final String buttonText;

  /// [data] The data
  final String data;

  static const String constructor = 'sendWebAppData';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'button_text': buttonText,
        'data': data,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SendWebAppData &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality().equals(other.buttonText, buttonText) &&
          const DeepCollectionEquality().equals(other.data, data));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(buttonText),
        const DeepCollectionEquality().hash(data)
      ]);
}
