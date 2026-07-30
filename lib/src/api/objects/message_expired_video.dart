// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A self-destructed video message
@immutable
class MessageExpiredVideo extends MessageContent {
  const MessageExpiredVideo();

  static const String constructor = 'messageExpiredVideo';

  static MessageExpiredVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageExpiredVideo();
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
      (other.runtimeType == runtimeType && other is MessageExpiredVideo);

  @override
  int get hashCode => runtimeType.hashCode;
}
