// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The list of available message effects has changed
@immutable
class UpdateAvailableMessageEffects extends Update {
  const UpdateAvailableMessageEffects({
    required this.reactionEffectIds,
    required this.stickerEffectIds,
  });

  /// [reactionEffectIds] The new list of available message effects from emoji
  /// reactions
  final List<int> reactionEffectIds;

  /// [stickerEffectIds] The new list of available message effects from Premium
  /// stickers
  final List<int> stickerEffectIds;

  static const String constructor = 'updateAvailableMessageEffects';

  static UpdateAvailableMessageEffects? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateAvailableMessageEffects(
      reactionEffectIds: List<int>.from(
          ((json['reaction_effect_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
      stickerEffectIds: List<int>.from(
          ((json['sticker_effect_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reaction_effect_ids':
            reactionEffectIds.map((item) => item.toString()).toList(),
        'sticker_effect_ids':
            stickerEffectIds.map((item) => item.toString()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateAvailableMessageEffects &&
          const DeepCollectionEquality()
              .equals(other.reactionEffectIds, reactionEffectIds) &&
          const DeepCollectionEquality()
              .equals(other.stickerEffectIds, stickerEffectIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(reactionEffectIds),
        const DeepCollectionEquality().hash(stickerEffectIds)
      ]);
}
