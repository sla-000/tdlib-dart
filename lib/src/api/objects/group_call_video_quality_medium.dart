// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The medium video quality
@immutable
class GroupCallVideoQualityMedium extends GroupCallVideoQuality {
  const GroupCallVideoQualityMedium();

  static const String constructor = 'groupCallVideoQualityMedium';

  static GroupCallVideoQualityMedium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GroupCallVideoQualityMedium();
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
          other is GroupCallVideoQualityMedium);

  @override
  int get hashCode => runtimeType.hashCode;
}
