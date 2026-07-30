// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Chat has_protected_content setting was requested to be disabled
@immutable
class MessageChatHasProtectedContentDisableRequested extends MessageContent {
  const MessageChatHasProtectedContentDisableRequested({
    required this.isExpired,
  });

  /// [isExpired] True, if the request has expired
  final bool isExpired;

  static const String constructor =
      'messageChatHasProtectedContentDisableRequested';

  static MessageChatHasProtectedContentDisableRequested? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatHasProtectedContentDisableRequested(
      isExpired: json['is_expired'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_expired': isExpired,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageChatHasProtectedContentDisableRequested &&
          const DeepCollectionEquality().equals(other.isExpired, isExpired));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(isExpired)]);
}
