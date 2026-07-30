// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The ability to set location
@immutable
class BusinessFeatureLocation extends BusinessFeature {
  const BusinessFeatureLocation();

  static const String constructor = 'businessFeatureLocation';

  static BusinessFeatureLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureLocation();
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
      (other.runtimeType == runtimeType && other is BusinessFeatureLocation);

  @override
  int get hashCode => runtimeType.hashCode;
}
