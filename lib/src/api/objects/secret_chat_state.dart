// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes the current secret chat state
@immutable
abstract class SecretChatState extends TdObject {
  const SecretChatState();

  static const String constructor = 'secretChatState';

  /// Inherited by:
  /// [SecretChatStateClosed]
  /// [SecretChatStatePending]
  /// [SecretChatStateReady]
  static SecretChatState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SecretChatStateClosed.constructor:
        return SecretChatStateClosed.fromJson(json);
      case SecretChatStatePending.constructor:
        return SecretChatStatePending.fromJson(json);
      case SecretChatStateReady.constructor:
        return SecretChatStateReady.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is SecretChatState);

  @override
  int get hashCode => runtimeType.hashCode;
}
