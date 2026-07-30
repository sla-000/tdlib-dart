// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Checks whether the current user can message another user or try to create
/// a chat with them
/// Returns [CanSendMessageToUserResult]
@immutable
class CanSendMessageToUser extends TdFunction {
  const CanSendMessageToUser({
    required this.userId,
    required this.onlyLocal,
  });

  /// [userId] Identifier of the other user
  final int userId;

  /// [onlyLocal] Pass true to get only locally available information without
  /// sending network requests
  final bool onlyLocal;

  static const String constructor = 'canSendMessageToUser';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'only_local': onlyLocal,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CanSendMessageToUser &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.onlyLocal, onlyLocal));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(onlyLocal)
      ]);
}
