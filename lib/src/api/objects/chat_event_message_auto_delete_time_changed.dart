// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message auto-delete timer was changed
@immutable
class ChatEventMessageAutoDeleteTimeChanged extends ChatEventAction {
  const ChatEventMessageAutoDeleteTimeChanged({
    required this.oldMessageAutoDeleteTime,
    required this.newMessageAutoDeleteTime,
  });

  /// [oldMessageAutoDeleteTime] Previous value of message_auto_delete_time
  final int oldMessageAutoDeleteTime;

  /// [newMessageAutoDeleteTime] New value of message_auto_delete_time
  final int newMessageAutoDeleteTime;

  static const String constructor = 'chatEventMessageAutoDeleteTimeChanged';

  static ChatEventMessageAutoDeleteTimeChanged? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMessageAutoDeleteTimeChanged(
      oldMessageAutoDeleteTime: json['old_message_auto_delete_time'] as int,
      newMessageAutoDeleteTime: json['new_message_auto_delete_time'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_message_auto_delete_time': oldMessageAutoDeleteTime,
        'new_message_auto_delete_time': newMessageAutoDeleteTime,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventMessageAutoDeleteTimeChanged &&
          const DeepCollectionEquality().equals(
              other.oldMessageAutoDeleteTime, oldMessageAutoDeleteTime) &&
          const DeepCollectionEquality().equals(
              other.newMessageAutoDeleteTime, newMessageAutoDeleteTime));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(oldMessageAutoDeleteTime),
        const DeepCollectionEquality().hash(newMessageAutoDeleteTime)
      ]);
}
