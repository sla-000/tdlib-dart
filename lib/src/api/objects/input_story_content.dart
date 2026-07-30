// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The content of a story to post
@immutable
abstract class InputStoryContent extends TdObject {
  const InputStoryContent();

  static const String constructor = 'inputStoryContent';

  /// Inherited by:
  /// [InputStoryContentPhoto]
  /// [InputStoryContentVideo]
  static InputStoryContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputStoryContentPhoto.constructor:
        return InputStoryContentPhoto.fromJson(json);
      case InputStoryContentVideo.constructor:
        return InputStoryContentVideo.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is InputStoryContent);

  @override
  int get hashCode => runtimeType.hashCode;
}
