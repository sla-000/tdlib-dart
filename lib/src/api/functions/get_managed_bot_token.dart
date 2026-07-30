import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns token of a managed bot; for bots only
/// Returns [Text]
@immutable
class GetManagedBotToken extends TdFunction {
  const GetManagedBotToken({
    required this.botUserId,
    required this.revoke,
  });

  /// [botUserId] Identifier of the managed bot
  final int botUserId;

  /// [revoke] Pass true to revoke the current token and create a new one
  final bool revoke;

  static const String constructor = 'getManagedBotToken';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'revoke': revoke,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
