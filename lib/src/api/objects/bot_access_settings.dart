import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes users that have access to a bot
@immutable
class BotAccessSettings extends TdObject {
  const BotAccessSettings({
    required this.isRestricted,
    required this.addedUserIds,
  });

  /// [isRestricted] True, if access to the bot is restricted to its owner and
  /// selected users
  final bool isRestricted;

  /// [addedUserIds] Identifiers of the users who can use the bot additionally
  /// to the owner of the bot
  final List<int> addedUserIds;

  static const String constructor = 'botAccessSettings';

  static BotAccessSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotAccessSettings(
      isRestricted: json['is_restricted'] as bool,
      addedUserIds: List<int>.from(
          ((json['added_user_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_restricted': isRestricted,
        'added_user_ids': addedUserIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
