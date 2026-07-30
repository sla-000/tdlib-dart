// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains settings for gift receiving for a user
@immutable
class GiftSettings extends TdObject {
  const GiftSettings({
    required this.showGiftButton,
    required this.acceptedGiftTypes,
  });

  /// [showGiftButton] True, if a button for sending a gift to the user or by
  /// the user must always be shown in the input field
  final bool showGiftButton;

  /// [acceptedGiftTypes] Types of gifts accepted by the user; for Telegram
  /// Premium users only
  final AcceptedGiftTypes acceptedGiftTypes;

  static const String constructor = 'giftSettings';

  static GiftSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftSettings(
      showGiftButton: json['show_gift_button'] as bool,
      acceptedGiftTypes: AcceptedGiftTypes.fromJson(
          json['accepted_gift_types'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'show_gift_button': showGiftButton,
        'accepted_gift_types': acceptedGiftTypes.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiftSettings &&
          const DeepCollectionEquality()
              .equals(other.showGiftButton, showGiftButton) &&
          const DeepCollectionEquality()
              .equals(other.acceptedGiftTypes, acceptedGiftTypes));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(showGiftButton),
        const DeepCollectionEquality().hash(acceptedGiftTypes)
      ]);
}
