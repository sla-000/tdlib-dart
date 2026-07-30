// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A non-standard action has happened in the chat
@immutable
class MessageCustomServiceAction extends MessageContent {
  const MessageCustomServiceAction({
    required this.text,
  });

  /// [text] Message text to be shown in the chat
  final String text;

  static const String constructor = 'messageCustomServiceAction';

  static MessageCustomServiceAction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageCustomServiceAction(
      text: json['text'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageCustomServiceAction &&
          const DeepCollectionEquality().equals(other.text, text));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(text)]);
}
