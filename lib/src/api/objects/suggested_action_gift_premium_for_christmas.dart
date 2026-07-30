// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Suggests the user to gift Telegram Premium to friends for Christmas
@immutable
class SuggestedActionGiftPremiumForChristmas extends SuggestedAction {
  const SuggestedActionGiftPremiumForChristmas();

  static const String constructor = 'suggestedActionGiftPremiumForChristmas';

  static SuggestedActionGiftPremiumForChristmas? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionGiftPremiumForChristmas();
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
          other is SuggestedActionGiftPremiumForChristmas);

  @override
  int get hashCode => runtimeType.hashCode;
}
