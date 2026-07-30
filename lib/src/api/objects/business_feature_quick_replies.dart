// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The ability to use quick replies
@immutable
class BusinessFeatureQuickReplies extends BusinessFeature {
  const BusinessFeatureQuickReplies();

  static const String constructor = 'businessFeatureQuickReplies';

  static BusinessFeatureQuickReplies? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureQuickReplies();
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
          other is BusinessFeatureQuickReplies);

  @override
  int get hashCode => runtimeType.hashCode;
}
