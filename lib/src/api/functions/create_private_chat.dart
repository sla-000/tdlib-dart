// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns an existing chat corresponding to a given user
/// Returns [Chat]
@immutable
class CreatePrivateChat extends TdFunction {
  const CreatePrivateChat({
    required this.userId,
    required this.force,
  });

  /// [userId] User identifier
  final int userId;

  /// [force] Pass true to create the chat without a network request. In this
  /// case all information about the chat except its type, title and photo can
  /// be incorrect
  final bool force;

  static const String constructor = 'createPrivateChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'force': force,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CreatePrivateChat &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.force, force));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(force)
      ]);
}
