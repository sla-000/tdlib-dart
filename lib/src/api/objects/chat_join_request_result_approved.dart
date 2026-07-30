// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The request was approved
@immutable
class ChatJoinRequestResultApproved extends ChatJoinRequestResult {
  const ChatJoinRequestResultApproved();

  static const String constructor = 'chatJoinRequestResultApproved';

  static ChatJoinRequestResultApproved? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatJoinRequestResultApproved();
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
          other is ChatJoinRequestResultApproved);

  @override
  int get hashCode => runtimeType.hashCode;
}
