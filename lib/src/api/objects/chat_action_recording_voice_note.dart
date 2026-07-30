// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user is recording a voice note
@immutable
class ChatActionRecordingVoiceNote extends ChatAction {
  const ChatActionRecordingVoiceNote();

  static const String constructor = 'chatActionRecordingVoiceNote';

  static ChatActionRecordingVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionRecordingVoiceNote();
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
          other is ChatActionRecordingVoiceNote);

  @override
  int get hashCode => runtimeType.hashCode;
}
