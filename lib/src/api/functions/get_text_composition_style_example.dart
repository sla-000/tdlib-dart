// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns an example of usage of a custom text composition style
/// Returns [TextCompositionStyleExample]
@immutable
class GetTextCompositionStyleExample extends TdFunction {
  const GetTextCompositionStyleExample({
    required this.name,
    required this.exampleNumber,
  });

  /// [name] Name of the style
  final String name;

  /// [exampleNumber] 0-based unique number of the requested example; must be
  /// non-negative and less than
  /// getOption("text_composition_style_example_count")
  final int exampleNumber;

  static const String constructor = 'getTextCompositionStyleExample';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'example_number': exampleNumber,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetTextCompositionStyleExample &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality()
              .equals(other.exampleNumber, exampleNumber));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(exampleNumber)
      ]);
}
