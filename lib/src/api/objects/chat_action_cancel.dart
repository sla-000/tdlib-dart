// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user has canceled the previous action
@immutable
class ChatActionCancel extends ChatAction {
  const ChatActionCancel();

  static const String constructor = 'chatActionCancel';

  static ChatActionCancel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionCancel();
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
      (other.runtimeType == runtimeType && other is ChatActionCancel);

  @override
  int get hashCode => runtimeType.hashCode;
}
