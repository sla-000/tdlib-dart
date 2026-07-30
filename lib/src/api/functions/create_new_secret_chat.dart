// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Creates a new secret chat. Returns the newly created chat
/// Returns [Chat]
@immutable
class CreateNewSecretChat extends TdFunction {
  const CreateNewSecretChat({
    required this.userId,
  });

  /// [userId] Identifier of the target user
  final int userId;

  static const String constructor = 'createNewSecretChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CreateNewSecretChat &&
          const DeepCollectionEquality().equals(other.userId, userId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(userId)]);
}
