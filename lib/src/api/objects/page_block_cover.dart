// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A page cover; instant view only
@immutable
class PageBlockCover extends PageBlock {
  const PageBlockCover({
    required this.cover,
  });

  /// [cover] Cover
  final PageBlock cover;

  static const String constructor = 'pageBlockCover';

  static PageBlockCover? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockCover(
      cover: PageBlock.fromJson(json['cover'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'cover': cover.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockCover &&
          const DeepCollectionEquality().equals(other.cover, cover));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(cover)]);
}
