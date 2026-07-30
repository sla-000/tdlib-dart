// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Allows the specified bot to send messages to the user
/// Returns [Ok]
@immutable
class AllowBotToSendMessages extends TdFunction {
  const AllowBotToSendMessages({
    required this.botUserId,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  static const String constructor = 'allowBotToSendMessages';

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
          other is AllowBotToSendMessages &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(botUserId)]);
}
