// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of messages from a business account as received by a bot
@immutable
class BusinessMessages extends TdObject {
  const BusinessMessages({
    required this.messages,
  });

  /// [messages] List of business messages
  final List<BusinessMessage> messages;

  static const String constructor = 'businessMessages';

  static BusinessMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessMessages(
      messages: List<BusinessMessage>.from(
          ((json['messages'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  BusinessMessage.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'messages': messages.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BusinessMessages &&
          const DeepCollectionEquality().equals(other.messages, messages));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(messages)]);
}
