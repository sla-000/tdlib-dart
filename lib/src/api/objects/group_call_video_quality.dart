// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes the quality of a group call video
@immutable
abstract class GroupCallVideoQuality extends TdObject {
  const GroupCallVideoQuality();

  static const String constructor = 'groupCallVideoQuality';

  /// Inherited by:
  /// [GroupCallVideoQualityFull]
  /// [GroupCallVideoQualityMedium]
  /// [GroupCallVideoQualityThumbnail]
  static GroupCallVideoQuality? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case GroupCallVideoQualityFull.constructor:
        return GroupCallVideoQualityFull.fromJson(json);
      case GroupCallVideoQualityMedium.constructor:
        return GroupCallVideoQualityMedium.fromJson(json);
      case GroupCallVideoQualityThumbnail.constructor:
        return GroupCallVideoQualityThumbnail.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GroupCallVideoQuality);

  @override
  int get hashCode => runtimeType.hashCode;
}
