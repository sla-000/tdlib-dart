// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A new message was received; can also be an outgoing message
@immutable
class UpdateNewMessage extends Update {
  const UpdateNewMessage({
    required this.message,
  });

  /// [message] The new message
  final Message message;

  static const String constructor = 'updateNewMessage';

  static UpdateNewMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewMessage(
      message: Message.fromJson(json['message'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateNewMessage &&
          const DeepCollectionEquality().equals(other.message, message));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(message)]);
}
