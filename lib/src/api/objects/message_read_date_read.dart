// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains read date of the message
@immutable
class MessageReadDateRead extends MessageReadDate {
  const MessageReadDateRead({
    required this.readDate,
  });

  /// [readDate] Point in time (Unix timestamp) when the message was read by the
  /// other user
  final int readDate;

  static const String constructor = 'messageReadDateRead';

  static MessageReadDateRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageReadDateRead(
      readDate: (json['read_date'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'read_date': readDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageReadDateRead &&
          const DeepCollectionEquality().equals(other.readDate, readDate));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(readDate)]);
}
