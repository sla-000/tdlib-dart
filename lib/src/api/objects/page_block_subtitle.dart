// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The subtitle of a page; instant view only
@immutable
class PageBlockSubtitle extends PageBlock {
  const PageBlockSubtitle({
    required this.subtitle,
  });

  /// [subtitle] Subtitle
  final RichText subtitle;

  static const String constructor = 'pageBlockSubtitle';

  static PageBlockSubtitle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockSubtitle(
      subtitle: RichText.fromJson(json['subtitle'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'subtitle': subtitle.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockSubtitle &&
          const DeepCollectionEquality().equals(other.subtitle, subtitle));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(subtitle)]);
}
