// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat is sponsored by the user's MTProxy server
@immutable
class ChatSourceMtprotoProxy extends ChatSource {
  const ChatSourceMtprotoProxy();

  static const String constructor = 'chatSourceMtprotoProxy';

  static ChatSourceMtprotoProxy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatSourceMtprotoProxy();
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
      (other.runtimeType == runtimeType && other is ChatSourceMtprotoProxy);

  @override
  int get hashCode => runtimeType.hashCode;
}
