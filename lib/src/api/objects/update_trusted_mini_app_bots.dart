// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Lists of bots which Mini Apps must be allowed to read text from clipboard
/// and must be opened without a warning
@immutable
class UpdateTrustedMiniAppBots extends Update {
  const UpdateTrustedMiniAppBots({
    required this.botUserIds,
  });

  /// [botUserIds] List of user identifiers of the bots; the corresponding users
  /// may not be sent using updateUser updates and may not be accessible
  final List<int> botUserIds;

  static const String constructor = 'updateTrustedMiniAppBots';

  static UpdateTrustedMiniAppBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateTrustedMiniAppBots(
      botUserIds: List<int>.from(
          ((json['bot_user_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_ids': botUserIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateTrustedMiniAppBots &&
          const DeepCollectionEquality().equals(other.botUserIds, botUserIds));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(botUserIds)]);
}
