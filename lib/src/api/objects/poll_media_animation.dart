// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An animation
@immutable
class PollMediaAnimation extends PollMedia {
  const PollMediaAnimation({
    required this.animation,
  });

  /// [animation] The animation
  final Animation animation;

  static const String constructor = 'pollMediaAnimation';

  static PollMediaAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollMediaAnimation(
      animation:
          Animation.fromJson(json['animation'] as Map<String, dynamic>?)!,
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
          other is PollMediaAnimation &&
          const DeepCollectionEquality().equals(other.animation, animation));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(animation)]);
}
