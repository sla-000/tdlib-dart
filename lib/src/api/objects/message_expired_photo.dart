// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A self-destructed photo message
@immutable
class MessageExpiredPhoto extends MessageContent {
  const MessageExpiredPhoto();

  static const String constructor = 'messageExpiredPhoto';

  static MessageExpiredPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageExpiredPhoto();
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
      (other.runtimeType == runtimeType && other is MessageExpiredPhoto);

  @override
  int get hashCode => runtimeType.hashCode;
}
