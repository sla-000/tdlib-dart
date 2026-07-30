// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An animation
@immutable
class InputPollMediaAnimation extends InputPollMedia {
  const InputPollMediaAnimation({
    required this.animation,
  });

  /// [animation] The animation to be sent
  final InputAnimation animation;

  static const String constructor = 'inputPollMediaAnimation';

  static InputPollMediaAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollMediaAnimation(
      animation:
          InputAnimation.fromJson(json['animation'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'animation': animation.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPollMediaAnimation &&
          const DeepCollectionEquality().equals(other.animation, animation));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(animation)]);
}
