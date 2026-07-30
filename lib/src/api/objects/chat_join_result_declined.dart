// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The join was declined by the guard bot
@immutable
class ChatJoinResultDeclined extends ChatJoinResult {
  const ChatJoinResultDeclined();

  static const String constructor = 'chatJoinResultDeclined';

  static ChatJoinResultDeclined? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatJoinResultDeclined();
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
      (other.runtimeType == runtimeType && other is ChatJoinResultDeclined);

  @override
  int get hashCode => runtimeType.hashCode;
}
