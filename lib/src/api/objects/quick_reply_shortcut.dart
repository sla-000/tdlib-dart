// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a shortcut that can be used for a quick reply
@immutable
class QuickReplyShortcut extends TdObject {
  const QuickReplyShortcut({
    required this.id,
    required this.name,
    required this.firstMessage,
    required this.messageCount,
  });

  /// [id] Unique shortcut identifier
  final int id;

  /// [name] The name of the shortcut that can be used to use the shortcut
  final String name;

  /// [firstMessage] The first shortcut message
  final QuickReplyMessage firstMessage;

  /// [messageCount] The total number of messages in the shortcut
  final int messageCount;

  static const String constructor = 'quickReplyShortcut';

  static QuickReplyShortcut? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return QuickReplyShortcut(
      id: json['id'] as int,
      name: json['name'] as String,
      firstMessage: QuickReplyMessage.fromJson(
          json['first_message'] as Map<String, dynamic>?)!,
      messageCount: json['message_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'first_message': firstMessage.toJson(),
        'message_count': messageCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is QuickReplyShortcut &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality()
              .equals(other.firstMessage, firstMessage) &&
          const DeepCollectionEquality()
              .equals(other.messageCount, messageCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(firstMessage),
        const DeepCollectionEquality().hash(messageCount)
      ]);
}
