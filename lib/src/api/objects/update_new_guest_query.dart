// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A new incoming guest query; for bots only
@immutable
class UpdateNewGuestQuery extends Update {
  const UpdateNewGuestQuery({
    required this.id,
    required this.message,
    required this.referenceMessages,
  });

  /// [id] Unique query identifier
  final int id;

  /// [message] The message with the query
  final Message message;

  /// [referenceMessages] The list of reference messages
  final List<Message> referenceMessages;

  static const String constructor = 'updateNewGuestQuery';

  static UpdateNewGuestQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewGuestQuery(
      id: (json['id'] is int
              ? json['id'] as int
              : int.tryParse(json['id']?.toString() ?? '')) ??
          0,
      message: Message.fromJson(json['message'] as Map<String, dynamic>?)!,
      referenceMessages: List<Message>.from(
          ((json['reference_messages'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Message.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'message': message.toJson(),
        'reference_messages':
            referenceMessages.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateNewGuestQuery &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.message, message) &&
          const DeepCollectionEquality()
              .equals(other.referenceMessages, referenceMessages));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(message),
        const DeepCollectionEquality().hash(referenceMessages)
      ]);
}
