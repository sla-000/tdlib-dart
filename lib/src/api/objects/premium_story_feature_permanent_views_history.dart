// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The ability to check who opened the current user's stories after they
/// expire
@immutable
class PremiumStoryFeaturePermanentViewsHistory extends PremiumStoryFeature {
  const PremiumStoryFeaturePermanentViewsHistory();

  static const String constructor = 'premiumStoryFeaturePermanentViewsHistory';

  static PremiumStoryFeaturePermanentViewsHistory? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumStoryFeaturePermanentViewsHistory();
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
          other is PremiumStoryFeaturePermanentViewsHistory);

  @override
  int get hashCode => runtimeType.hashCode;
}
