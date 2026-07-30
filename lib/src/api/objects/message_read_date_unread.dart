// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message is unread yet
@immutable
class MessageReadDateUnread extends MessageReadDate {
  const MessageReadDateUnread();

  static const String constructor = 'messageReadDateUnread';

  static MessageReadDateUnread? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageReadDateUnread();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is MessageReadDateUnread);

  @override
  int get hashCode => runtimeType.hashCode;
}
