// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The type of default reaction has changed
@immutable
class UpdateDefaultReactionType extends Update {
  const UpdateDefaultReactionType({
    required this.reactionType,
  });

  /// [reactionType] The new type of the default reaction
  final ReactionType reactionType;

  static const String constructor = 'updateDefaultReactionType';

  static UpdateDefaultReactionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateDefaultReactionType(
      reactionType: ReactionType.fromJson(
          json['reaction_type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reaction_type': reactionType.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateDefaultReactionType &&
          const DeepCollectionEquality()
              .equals(other.reactionType, reactionType));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(reactionType)]);
}
