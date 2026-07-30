// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user is recording a video note
@immutable
class ChatActionRecordingVideoNote extends ChatAction {
  const ChatActionRecordingVideoNote();

  static const String constructor = 'chatActionRecordingVideoNote';

  static ChatActionRecordingVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionRecordingVideoNote();
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
          other is ChatActionRecordingVideoNote);

  @override
  int get hashCode => runtimeType.hashCode;
}
