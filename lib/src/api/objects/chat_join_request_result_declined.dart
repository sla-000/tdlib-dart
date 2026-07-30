// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The request was decline
@immutable
class ChatJoinRequestResultDeclined extends ChatJoinRequestResult {
  const ChatJoinRequestResultDeclined();

  static const String constructor = 'chatJoinRequestResultDeclined';

  static ChatJoinRequestResultDeclined? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatJoinRequestResultDeclined();
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
          other is ChatJoinRequestResultDeclined);

  @override
  int get hashCode => runtimeType.hashCode;
}
