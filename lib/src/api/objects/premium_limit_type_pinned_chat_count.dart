// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The maximum number of pinned chats in the main chat list
@immutable
class PremiumLimitTypePinnedChatCount extends PremiumLimitType {
  const PremiumLimitTypePinnedChatCount();

  static const String constructor = 'premiumLimitTypePinnedChatCount';

  static PremiumLimitTypePinnedChatCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypePinnedChatCount();
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
          other is PremiumLimitTypePinnedChatCount);

  @override
  int get hashCode => runtimeType.hashCode;
}
