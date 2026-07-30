// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of story areas to be added
@immutable
class InputStoryAreas extends TdObject {
  const InputStoryAreas({
    required this.areas,
  });

  /// [areas] List of input story areas. Currently, a story can have up to 10
  /// inputStoryAreaTypeLocation, inputStoryAreaTypeFoundVenue, and
  /// inputStoryAreaTypePreviousVenue areas, up to
  /// getOption("story_suggested_reaction_area_count_max")
  /// inputStoryAreaTypeSuggestedReaction areas, up to 1
  /// inputStoryAreaTypeMessage area, up to
  /// getOption("story_link_area_count_max") inputStoryAreaTypeLink areas if the
  /// current user is a Telegram Premium user, up to 3 inputStoryAreaTypeWeather
  /// areas, and up to 1 inputStoryAreaTypeUpgradedGift area
  final List<InputStoryArea> areas;

  static const String constructor = 'inputStoryAreas';

  static InputStoryAreas? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryAreas(
      areas: List<InputStoryArea>.from(((json['areas'] as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => InputStoryArea.fromJson(item as Map<String, dynamic>?))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'areas': areas.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputStoryAreas &&
          const DeepCollectionEquality().equals(other.areas, areas));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(areas)]);
}
