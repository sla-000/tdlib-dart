// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The ability to create links to the business account with predefined
/// message text
@immutable
class BusinessFeatureAccountLinks extends BusinessFeature {
  const BusinessFeatureAccountLinks();

  static const String constructor = 'businessFeatureAccountLinks';

  static BusinessFeatureAccountLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureAccountLinks();
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
          other is BusinessFeatureAccountLinks);

  @override
  int get hashCode => runtimeType.hashCode;
}
