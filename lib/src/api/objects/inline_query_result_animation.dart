// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents an animation file
@immutable
class InlineQueryResultAnimation extends InlineQueryResult {
  const InlineQueryResultAnimation({
    required this.id,
    required this.animation,
    required this.title,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [animation] Animation file
  final Animation animation;

  /// [title] Animation title
  final String title;

  static const String constructor = 'inlineQueryResultAnimation';

  static InlineQueryResultAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultAnimation(
      id: json['id'] as String,
      animation:
          Animation.fromJson(json['animation'] as Map<String, dynamic>?)!,
      title: json['title'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'animation': animation.toJson(),
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InlineQueryResultAnimation &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.animation, animation) &&
          const DeepCollectionEquality().equals(other.title, title));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(animation),
        const DeepCollectionEquality().hash(title)
      ]);
}
