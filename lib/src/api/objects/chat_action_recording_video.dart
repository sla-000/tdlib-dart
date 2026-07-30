// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user is recording a video
@immutable
class ChatActionRecordingVideo extends ChatAction {
  const ChatActionRecordingVideo();

  static const String constructor = 'chatActionRecordingVideo';

  static ChatActionRecordingVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionRecordingVideo();
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
      (other.runtimeType == runtimeType && other is ChatActionRecordingVideo);

  @override
  int get hashCode => runtimeType.hashCode;
}
