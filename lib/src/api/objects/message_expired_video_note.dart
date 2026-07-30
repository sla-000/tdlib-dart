// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A self-destructed video note message
@immutable
class MessageExpiredVideoNote extends MessageContent {
  const MessageExpiredVideoNote();

  static const String constructor = 'messageExpiredVideoNote';

  static MessageExpiredVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageExpiredVideoNote();
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
      (other.runtimeType == runtimeType && other is MessageExpiredVideoNote);

  @override
  int get hashCode => runtimeType.hashCode;
}
