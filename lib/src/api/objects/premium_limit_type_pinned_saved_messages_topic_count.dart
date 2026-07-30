// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The maximum number of pinned Saved Messages topics
@immutable
class PremiumLimitTypePinnedSavedMessagesTopicCount extends PremiumLimitType {
  const PremiumLimitTypePinnedSavedMessagesTopicCount();

  static const String constructor =
      'premiumLimitTypePinnedSavedMessagesTopicCount';

  static PremiumLimitTypePinnedSavedMessagesTopicCount? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypePinnedSavedMessagesTopicCount();
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
          other is PremiumLimitTypePinnedSavedMessagesTopicCount);

  @override
  int get hashCode => runtimeType.hashCode;
}
