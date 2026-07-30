// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes the business bot that is connected to the current user account
/// Returns [Ok]
@immutable
class DeleteBusinessConnectedBot extends TdFunction {
  const DeleteBusinessConnectedBot({
    required this.botUserId,
  });

  /// [botUserId] Unique user identifier for the bot
  final int botUserId;

  static const String constructor = 'deleteBusinessConnectedBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeleteBusinessConnectedBot &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(botUserId)]);
}
