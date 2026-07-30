// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message content that is not supported in the current TDLib version
@immutable
class MessageUnsupported extends MessageContent {
  const MessageUnsupported();

  static const String constructor = 'messageUnsupported';

  static MessageUnsupported? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageUnsupported();
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
      (other.runtimeType == runtimeType && other is MessageUnsupported);

  @override
  int get hashCode => runtimeType.hashCode;
}
