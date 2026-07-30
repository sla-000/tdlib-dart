import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
