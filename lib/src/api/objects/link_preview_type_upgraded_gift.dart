// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to an upgraded gift
@immutable
class LinkPreviewTypeUpgradedGift extends LinkPreviewType {
  const LinkPreviewTypeUpgradedGift({
    required this.gift,
  });

  /// [gift] The gift
  final UpgradedGift gift;

  static const String constructor = 'linkPreviewTypeUpgradedGift';

  static LinkPreviewTypeUpgradedGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeUpgradedGift(
      gift: UpgradedGift.fromJson(json['gift'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift': gift.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LinkPreviewTypeUpgradedGift &&
          const DeepCollectionEquality().equals(other.gift, gift));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(gift)]);
}
