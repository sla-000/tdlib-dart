// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A service notification from the server was received. Upon receiving this
/// the application must show a popup with the content of the notification
@immutable
class UpdateServiceNotification extends Update {
  const UpdateServiceNotification({
    required this.type,
    required this.content,
  });

  /// [type] Notification type. If type begins with "AUTH_KEY_DROP_", then two
  /// buttons "Cancel" and "Log out" must be shown under notification; if user
  /// presses the second, all local data must be destroyed using Destroy method
  final String type;

  /// [content] Notification content
  final MessageContent content;

  static const String constructor = 'updateServiceNotification';

  static UpdateServiceNotification? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateServiceNotification(
      type: json['type'] as String,
      content:
          MessageContent.fromJson(json['content'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type,
        'content': content.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateServiceNotification &&
          const DeepCollectionEquality().equals(other.type, type) &&
          const DeepCollectionEquality().equals(other.content, content));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(content)
      ]);
}
