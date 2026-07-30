// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The ability to customize start page
@immutable
class BusinessFeatureStartPage extends BusinessFeature {
  const BusinessFeatureStartPage();

  static const String constructor = 'businessFeatureStartPage';

  static BusinessFeatureStartPage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureStartPage();
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
      (other.runtimeType == runtimeType && other is BusinessFeatureStartPage);

  @override
  int get hashCode => runtimeType.hashCode;
}
