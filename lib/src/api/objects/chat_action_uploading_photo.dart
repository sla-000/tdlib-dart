// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user is uploading a photo
@immutable
class ChatActionUploadingPhoto extends ChatAction {
  const ChatActionUploadingPhoto({
    required this.progress,
  });

  /// [progress] Upload progress, as a percentage
  final int progress;

  static const String constructor = 'chatActionUploadingPhoto';

  static ChatActionUploadingPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionUploadingPhoto(
      progress: json['progress'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'progress': progress,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatActionUploadingPhoto &&
          const DeepCollectionEquality().equals(other.progress, progress));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(progress)]);
}
