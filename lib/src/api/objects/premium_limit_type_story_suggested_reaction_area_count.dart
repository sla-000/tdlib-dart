// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The maximum number of suggested reaction areas on a story
@immutable
class PremiumLimitTypeStorySuggestedReactionAreaCount extends PremiumLimitType {
  const PremiumLimitTypeStorySuggestedReactionAreaCount();

  static const String constructor =
      'premiumLimitTypeStorySuggestedReactionAreaCount';

  static PremiumLimitTypeStorySuggestedReactionAreaCount? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeStorySuggestedReactionAreaCount();
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
          other is PremiumLimitTypeStorySuggestedReactionAreaCount);

  @override
  int get hashCode => runtimeType.hashCode;
}
