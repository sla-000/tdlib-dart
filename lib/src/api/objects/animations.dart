// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a list of animations
@immutable
class Animations extends TdObject {
  const Animations({
    required this.animations,
  });

  /// [animations] List of animations
  final List<Animation> animations;

  static const String constructor = 'animations';

  static Animations? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Animations(
      animations: List<Animation>.from(
          ((json['animations'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Animation.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'animations': animations.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Animations &&
          const DeepCollectionEquality().equals(other.animations, animations));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(animations)]);
}
