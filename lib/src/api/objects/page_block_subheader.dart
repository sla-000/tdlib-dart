// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A subheader; instant view only
@immutable
class PageBlockSubheader extends PageBlock {
  const PageBlockSubheader({
    required this.subheader,
  });

  /// [subheader] Subheader
  final RichText subheader;

  static const String constructor = 'pageBlockSubheader';

  static PageBlockSubheader? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockSubheader(
      subheader: RichText.fromJson(json['subheader'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'subheader': subheader.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockSubheader &&
          const DeepCollectionEquality().equals(other.subheader, subheader));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(subheader)]);
}
