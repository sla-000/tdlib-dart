// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The list of saved animations was updated
@immutable
class UpdateSavedAnimations extends Update {
  const UpdateSavedAnimations({
    required this.animationIds,
  });

  /// [animationIds] The new list of file identifiers of saved animations
  final List<int> animationIds;

  static const String constructor = 'updateSavedAnimations';

  static UpdateSavedAnimations? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSavedAnimations(
      animationIds: List<int>.from(
          ((json['animation_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'animation_ids': animationIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateSavedAnimations &&
          const DeepCollectionEquality()
              .equals(other.animationIds, animationIds));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(animationIds)]);
}
