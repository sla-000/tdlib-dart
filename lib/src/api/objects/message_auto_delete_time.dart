// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains default auto-delete timer setting for new chats
@immutable
class MessageAutoDeleteTime extends TdObject {
  const MessageAutoDeleteTime({
    required this.time,
  });

  /// [time] Message auto-delete time, in seconds. If 0, then messages aren't
  /// deleted automatically
  final int time;

  static const String constructor = 'messageAutoDeleteTime';

  static MessageAutoDeleteTime? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageAutoDeleteTime(
      time: (json['time'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'time': time,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageAutoDeleteTime &&
          const DeepCollectionEquality().equals(other.time, time));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(time)]);
}
