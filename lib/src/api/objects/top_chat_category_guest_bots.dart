// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A category containing frequently used chats with bots, which were used as
/// guest bots
@immutable
class TopChatCategoryGuestBots extends TopChatCategory {
  const TopChatCategoryGuestBots();

  static const String constructor = 'topChatCategoryGuestBots';

  static TopChatCategoryGuestBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryGuestBots();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is TopChatCategoryGuestBots);

  @override
  int get hashCode => runtimeType.hashCode;
}
