import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      id: int.tryParse(json['id']) ?? 0,
      message: Message.fromJson(json['message'] as Map<String, dynamic>?)!,
      referenceMessages: List<Message>.from(
          ((json['reference_messages'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Message.fromJson(item))
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
