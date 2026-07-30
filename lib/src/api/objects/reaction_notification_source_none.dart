// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Notifications for reactions are disabled
@immutable
class ReactionNotificationSourceNone extends ReactionNotificationSource {
  const ReactionNotificationSourceNone();

  static const String constructor = 'reactionNotificationSourceNone';

  static ReactionNotificationSourceNone? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReactionNotificationSourceNone();
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
      (other.runtimeType == runtimeType &&
          other is ReactionNotificationSourceNone);

  @override
  int get hashCode => runtimeType.hashCode;
}
