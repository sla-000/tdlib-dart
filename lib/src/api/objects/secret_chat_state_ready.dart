// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The secret chat is ready to use
@immutable
class SecretChatStateReady extends SecretChatState {
  const SecretChatStateReady();

  static const String constructor = 'secretChatStateReady';

  static SecretChatStateReady? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SecretChatStateReady();
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
      (other.runtimeType == runtimeType && other is SecretChatStateReady);

  @override
  int get hashCode => runtimeType.hashCode;
}
