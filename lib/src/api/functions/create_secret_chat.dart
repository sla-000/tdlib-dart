// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns an existing chat corresponding to a known secret chat
/// Returns [Chat]
@immutable
class CreateSecretChat extends TdFunction {
  const CreateSecretChat({
    required this.secretChatId,
  });

  /// [secretChatId] Secret chat identifier
  final int secretChatId;

  static const String constructor = 'createSecretChat';

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
          other is CreateSecretChat &&
          const DeepCollectionEquality()
              .equals(other.secretChatId, secretChatId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(secretChatId)]);
}
