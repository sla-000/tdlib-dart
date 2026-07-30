// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The join request was sent and have to be approved by administrators of the
/// chat
@immutable
class ChatJoinResultRequestSent extends ChatJoinResult {
  const ChatJoinResultRequestSent();

  static const String constructor = 'chatJoinResultRequestSent';

  static ChatJoinResultRequestSent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatJoinResultRequestSent();
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
      (other.runtimeType == runtimeType && other is ChatJoinResultRequestSent);

  @override
  int get hashCode => runtimeType.hashCode;
}
