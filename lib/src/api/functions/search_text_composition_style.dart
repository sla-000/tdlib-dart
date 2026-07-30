// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Searches a custom text composition style by its name
/// Returns [TextCompositionStyle]
@immutable
class SearchTextCompositionStyle extends TdFunction {
  const SearchTextCompositionStyle({
    required this.name,
  });

  /// [name] Name of the style
  final String name;

  static const String constructor = 'searchTextCompositionStyle';

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
          other is SearchTextCompositionStyle &&
          const DeepCollectionEquality().equals(other.name, name));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(name)]);
}
