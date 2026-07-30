// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A contact has registered with Telegram
@immutable
class MessageContactRegistered extends MessageContent {
  const MessageContactRegistered();

  static const String constructor = 'messageContactRegistered';

  static MessageContactRegistered? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageContactRegistered();
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
      (other.runtimeType == runtimeType && other is MessageContactRegistered);

  @override
  int get hashCode => runtimeType.hashCode;
}
