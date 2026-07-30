// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A category containing frequently used chats with bots, which Web Apps were
/// opened
@immutable
class TopChatCategoryWebAppBots extends TopChatCategory {
  const TopChatCategoryWebAppBots();

  static const String constructor = 'topChatCategoryWebAppBots';

  static TopChatCategoryWebAppBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryWebAppBots();
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
      (other.runtimeType == runtimeType && other is TopChatCategoryWebAppBots);

  @override
  int get hashCode => runtimeType.hashCode;
}
