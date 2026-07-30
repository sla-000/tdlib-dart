// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The maximum number of active stories
@immutable
class PremiumLimitTypeActiveStoryCount extends PremiumLimitType {
  const PremiumLimitTypeActiveStoryCount();

  static const String constructor = 'premiumLimitTypeActiveStoryCount';

  static PremiumLimitTypeActiveStoryCount? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeActiveStoryCount();
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
          other is PremiumLimitTypeActiveStoryCount);

  @override
  int get hashCode => runtimeType.hashCode;
}
