// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes order of active usernames of a bot. Can be called only if
/// userTypeBot.can_be_edited == true
/// Returns [Ok]
@immutable
class ReorderBotActiveUsernames extends TdFunction {
  const ReorderBotActiveUsernames({
    required this.botUserId,
    required this.usernames,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [usernames] The new order of active usernames. All currently active
  /// usernames must be specified
  final List<String> usernames;

  static const String constructor = 'reorderBotActiveUsernames';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'usernames': usernames.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReorderBotActiveUsernames &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality().equals(other.usernames, usernames));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(usernames)
      ]);
}
