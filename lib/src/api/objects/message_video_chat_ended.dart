// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with information about an ended video chat
@immutable
class MessageVideoChatEnded extends MessageContent {
  const MessageVideoChatEnded({
    required this.duration,
  });

  /// [duration] Call duration, in seconds
  final int duration;

  static const String constructor = 'messageVideoChatEnded';

  static MessageVideoChatEnded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVideoChatEnded(
      duration: (json['duration'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'duration': duration,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageVideoChatEnded &&
          const DeepCollectionEquality().equals(other.duration, duration));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(duration)]);
}
