// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a text composition style. Call
/// searchTextCompositionStyle with the given style name to get information
/// about the style. If the style is found and the user wants to add it, then
/// call addTextCompositionStyle
@immutable
class InternalLinkTypeTextCompositionStyle extends InternalLinkType {
  const InternalLinkTypeTextCompositionStyle({
    required this.styleName,
  });

  /// [styleName] Name of the style
  final String styleName;

  static const String constructor = 'internalLinkTypeTextCompositionStyle';

  static InternalLinkTypeTextCompositionStyle? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeTextCompositionStyle(
      styleName: (json['style_name'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'style_name': styleName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypeTextCompositionStyle &&
          const DeepCollectionEquality().equals(other.styleName, styleName));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(styleName)]);
}
