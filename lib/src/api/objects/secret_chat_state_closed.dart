// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The secret chat is closed
@immutable
class SecretChatStateClosed extends SecretChatState {
  const SecretChatStateClosed();

  static const String constructor = 'secretChatStateClosed';

  static SecretChatStateClosed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SecretChatStateClosed();
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
      (other.runtimeType == runtimeType && other is SecretChatStateClosed);

  @override
  int get hashCode => runtimeType.hashCode;
}
