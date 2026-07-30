// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Notifications for reactions are shown only for reactions from contacts
@immutable
class ReactionNotificationSourceContacts extends ReactionNotificationSource {
  const ReactionNotificationSourceContacts();

  static const String constructor = 'reactionNotificationSourceContacts';

  static ReactionNotificationSourceContacts? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReactionNotificationSourceContacts();
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
          other is ReactionNotificationSourceContacts);

  @override
  int get hashCode => runtimeType.hashCode;
}
