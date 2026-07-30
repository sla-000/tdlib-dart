// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a clickable rectangle area on a story media to be added
@immutable
class InputStoryArea extends TdObject {
  const InputStoryArea({
    required this.position,
    required this.type,
  });

  /// [position] Position of the area
  final StoryAreaPosition position;

  /// [type] Type of the area
  final InputStoryAreaType type;

  static const String constructor = 'inputStoryArea';

  static InputStoryArea? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryArea(
      position: StoryAreaPosition.fromJson(
          json['position'] as Map<String, dynamic>?)!,
      type: InputStoryAreaType.fromJson(json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'position': position.toJson(),
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputStoryArea &&
          const DeepCollectionEquality().equals(other.position, position) &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(position),
        const DeepCollectionEquality().hash(type)
      ]);
}
