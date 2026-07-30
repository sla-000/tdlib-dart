// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The request was postponed without a decision
@immutable
class ChatJoinRequestResultQueued extends ChatJoinRequestResult {
  const ChatJoinRequestResultQueued();

  static const String constructor = 'chatJoinRequestResultQueued';

  static ChatJoinRequestResultQueued? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatJoinRequestResultQueued();
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
          other is ChatJoinRequestResultQueued);

  @override
  int get hashCode => runtimeType.hashCode;
}
