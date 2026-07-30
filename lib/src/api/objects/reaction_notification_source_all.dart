// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Notifications for reactions are shown for all reactions
@immutable
class ReactionNotificationSourceAll extends ReactionNotificationSource {
  const ReactionNotificationSourceAll();

  static const String constructor = 'reactionNotificationSourceAll';

  static ReactionNotificationSourceAll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReactionNotificationSourceAll();
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
          other is ReactionNotificationSourceAll);

  @override
  int get hashCode => runtimeType.hashCode;
}
