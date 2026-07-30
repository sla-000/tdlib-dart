// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Identifier of a gift backdrop
@immutable
class UpgradedGiftAttributeIdBackdrop extends UpgradedGiftAttributeId {
  const UpgradedGiftAttributeIdBackdrop({
    required this.backdropId,
  });

  /// [backdropId] Identifier of the backdrop
  final int backdropId;

  static const String constructor = 'upgradedGiftAttributeIdBackdrop';

  static UpgradedGiftAttributeIdBackdrop? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftAttributeIdBackdrop(
      backdropId: json['backdrop_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'backdrop_id': backdropId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpgradedGiftAttributeIdBackdrop &&
          const DeepCollectionEquality().equals(other.backdropId, backdropId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(backdropId)]);
}
