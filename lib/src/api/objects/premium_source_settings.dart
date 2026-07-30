// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A user opened the Premium features screen from settings
@immutable
class PremiumSourceSettings extends PremiumSource {
  const PremiumSourceSettings();

  static const String constructor = 'premiumSourceSettings';

  static PremiumSourceSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumSourceSettings();
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
      (other.runtimeType == runtimeType && other is PremiumSourceSettings);

  @override
  int get hashCode => runtimeType.hashCode;
}
