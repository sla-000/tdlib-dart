// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a paid media
@immutable
abstract class PaidMedia extends TdObject {
  const PaidMedia();

  static const String constructor = 'paidMedia';

  /// Inherited by:
  /// [PaidMediaPhoto]
  /// [PaidMediaPreview]
  /// [PaidMediaUnsupported]
  /// [PaidMediaVideo]
  static PaidMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PaidMediaPhoto.constructor:
        return PaidMediaPhoto.fromJson(json);
      case PaidMediaPreview.constructor:
        return PaidMediaPreview.fromJson(json);
      case PaidMediaUnsupported.constructor:
        return PaidMediaUnsupported.fromJson(json);
      case PaidMediaVideo.constructor:
        return PaidMediaVideo.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is PaidMedia);

  @override
  int get hashCode => runtimeType.hashCode;
}
