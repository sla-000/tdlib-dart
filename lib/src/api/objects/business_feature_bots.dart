// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The ability to connect a bot to the account
@immutable
class BusinessFeatureBots extends BusinessFeature {
  const BusinessFeatureBots();

  static const String constructor = 'businessFeatureBots';

  static BusinessFeatureBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureBots();
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
      (other.runtimeType == runtimeType && other is BusinessFeatureBots);

  @override
  int get hashCode => runtimeType.hashCode;
}
