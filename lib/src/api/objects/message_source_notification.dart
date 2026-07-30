// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message is from a notification
@immutable
class MessageSourceNotification extends MessageSource {
  const MessageSourceNotification();

  static const String constructor = 'messageSourceNotification';

  static MessageSourceNotification? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSourceNotification();
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
      (other.runtimeType == runtimeType && other is MessageSourceNotification);

  @override
  int get hashCode => runtimeType.hashCode;
}
