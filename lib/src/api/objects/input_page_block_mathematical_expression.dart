// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A mathematical expression
@immutable
class InputPageBlockMathematicalExpression extends InputPageBlock {
  const InputPageBlockMathematicalExpression({
    required this.expression,
  });

  /// [expression] The expression in LaTeX format
  final String expression;

  static const String constructor = 'inputPageBlockMathematicalExpression';

  static InputPageBlockMathematicalExpression? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockMathematicalExpression(
      expression: json['expression'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'expression': expression,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPageBlockMathematicalExpression &&
          const DeepCollectionEquality().equals(other.expression, expression));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(expression)]);
}
