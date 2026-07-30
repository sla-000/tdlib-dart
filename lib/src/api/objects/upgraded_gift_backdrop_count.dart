// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a backdrop of an upgraded gift
@immutable
class UpgradedGiftBackdropCount extends TdObject {
  const UpgradedGiftBackdropCount({
    required this.backdrop,
    required this.totalCount,
  });

  /// [backdrop] The backdrop
  final UpgradedGiftBackdrop backdrop;

  /// [totalCount] Total number of gifts with the symbol
  final int totalCount;

  static const String constructor = 'upgradedGiftBackdropCount';

  static UpgradedGiftBackdropCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftBackdropCount(
      backdrop: UpgradedGiftBackdrop.fromJson(
          json['backdrop'] as Map<String, dynamic>?)!,
      totalCount: json['total_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'backdrop': backdrop.toJson(),
        'total_count': totalCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpgradedGiftBackdropCount &&
          const DeepCollectionEquality().equals(other.backdrop, backdrop) &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(backdrop),
        const DeepCollectionEquality().hash(totalCount)
      ]);
}
