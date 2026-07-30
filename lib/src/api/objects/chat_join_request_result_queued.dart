import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
