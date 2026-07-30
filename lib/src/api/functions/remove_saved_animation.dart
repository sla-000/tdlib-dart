// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Removes an animation from the list of saved animations
/// Returns [Ok]
@immutable
class RemoveSavedAnimation extends TdFunction {
  const RemoveSavedAnimation({
    required this.animation,
  });

  /// [animation] Animation file to be removed
  final InputFile animation;

  static const String constructor = 'removeSavedAnimation';

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
          other is RemoveSavedAnimation &&
          const DeepCollectionEquality().equals(other.animation, animation));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(animation)]);
}
