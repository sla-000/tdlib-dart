// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a secret chat by its identifier. This is an
/// offline method
/// Returns [SecretChat]
@immutable
class GetSecretChat extends TdFunction {
  const GetSecretChat({
    required this.secretChatId,
  });

  /// [secretChatId] Secret chat identifier
  final int secretChatId;

  static const String constructor = 'getSecretChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'secret_chat_id': secretChatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetSecretChat &&
          const DeepCollectionEquality()
              .equals(other.secretChatId, secretChatId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(secretChatId)]);
}
