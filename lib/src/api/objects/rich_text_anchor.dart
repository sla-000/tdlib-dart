// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An anchor
@immutable
class RichTextAnchor extends RichText {
  const RichTextAnchor({
    required this.name,
  });

  /// [name] Anchor name
  final String name;

  static const String constructor = 'richTextAnchor';

  static RichTextAnchor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextAnchor(
      name: json['name'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RichTextAnchor &&
          const DeepCollectionEquality().equals(other.name, name));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(name)]);
}
