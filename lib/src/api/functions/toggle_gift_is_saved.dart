// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Toggles whether a gift is shown on the current user's or the channel's
/// profile page; requires can_post_messages administrator right in the
/// channel chat
/// Returns [Ok]
@immutable
class ToggleGiftIsSaved extends TdFunction {
  const ToggleGiftIsSaved({
    required this.receivedGiftId,
    required this.isSaved,
  });

  /// [receivedGiftId] Identifier of the gift
  final String receivedGiftId;

  /// [isSaved] Pass true to display the gift on the user's or the channel's
  /// profile page; pass false to remove it from the profile page
  final bool isSaved;

  static const String constructor = 'toggleGiftIsSaved';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'received_gift_id': receivedGiftId,
        'is_saved': isSaved,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ToggleGiftIsSaved &&
          const DeepCollectionEquality()
              .equals(other.receivedGiftId, receivedGiftId) &&
          const DeepCollectionEquality().equals(other.isSaved, isSaved));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(receivedGiftId),
        const DeepCollectionEquality().hash(isSaved)
      ]);
}
