// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Ability to change position of the main chat list, archive and mute all new
/// chats from non-contacts, and completely disable notifications about the
/// user's contacts joined Telegram
@immutable
class PremiumFeatureAdvancedChatManagement extends PremiumFeature {
  const PremiumFeatureAdvancedChatManagement();

  static const String constructor = 'premiumFeatureAdvancedChatManagement';

  static PremiumFeatureAdvancedChatManagement? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureAdvancedChatManagement();
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
      (other.runtimeType == runtimeType &&
          other is PremiumFeatureAdvancedChatManagement);

  @override
  int get hashCode => runtimeType.hashCode;
}
