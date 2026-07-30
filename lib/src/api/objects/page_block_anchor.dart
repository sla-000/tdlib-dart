// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An invisible anchor on a page, which can be used in a URL to open the page
/// from the specified anchor
@immutable
class PageBlockAnchor extends PageBlock {
  const PageBlockAnchor({
    required this.name,
  });

  /// [name] Name of the anchor
  final String name;

  static const String constructor = 'pageBlockAnchor';

  static PageBlockAnchor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockAnchor(
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
          other is PageBlockAnchor &&
          const DeepCollectionEquality().equals(other.name, name));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(name)]);
}
