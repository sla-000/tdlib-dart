// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message is too old to get read date
@immutable
class MessageReadDateTooOld extends MessageReadDate {
  const MessageReadDateTooOld();

  static const String constructor = 'messageReadDateTooOld';

  static MessageReadDateTooOld? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageReadDateTooOld();
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
      (other.runtimeType == runtimeType && other is MessageReadDateTooOld);

  @override
  int get hashCode => runtimeType.hashCode;
}
