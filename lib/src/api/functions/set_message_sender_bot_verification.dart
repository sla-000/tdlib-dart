// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the verification status of a user or a chat by an owned bot
/// Returns [Ok]
@immutable
class SetMessageSenderBotVerification extends TdFunction {
  const SetMessageSenderBotVerification({
    required this.botUserId,
    required this.verifiedId,
    required this.customDescription,
  });

  /// [botUserId] Identifier of the owned bot, which will verify the user or the
  /// chat
  final int botUserId;

  /// [verifiedId] Identifier of the user or the supergroup or channel chat,
  /// which will be verified by the bot
  final MessageSender verifiedId;

  /// [customDescription] Custom description of verification reason;
  /// 0-getOption("bot_verification_custom_description_length_max"). If empty,
  /// then "was verified by organization "organization_name"" will be used as
  /// description. Can be specified only if the bot is allowed to provide custom
  /// description
  final String customDescription;

  static const String constructor = 'setMessageSenderBotVerification';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'verified_id': verifiedId.toJson(),
        'custom_description': customDescription,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetMessageSenderBotVerification &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality().equals(other.verifiedId, verifiedId) &&
          const DeepCollectionEquality()
              .equals(other.customDescription, customDescription));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(verifiedId),
        const DeepCollectionEquality().hash(customDescription)
      ]);
}
