// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A video chat or live stream has ended
@immutable
class PushMessageContentVideoChatEnded extends PushMessageContent {
  const PushMessageContentVideoChatEnded();

  static const String constructor = 'pushMessageContentVideoChatEnded';

  static PushMessageContentVideoChatEnded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentVideoChatEnded();
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
          other is PushMessageContentVideoChatEnded);

  @override
  int get hashCode => runtimeType.hashCode;
}
