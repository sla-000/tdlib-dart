// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes the type of poll to send
@immutable
abstract class InputPollType extends TdObject {
  const InputPollType();

  static const String constructor = 'inputPollType';

  /// Inherited by:
  /// [InputPollTypeQuiz]
  /// [InputPollTypeRegular]
  static InputPollType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputPollTypeQuiz.constructor:
        return InputPollTypeQuiz.fromJson(json);
      case InputPollTypeRegular.constructor:
        return InputPollTypeRegular.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is InputPollType);

  @override
  int get hashCode => runtimeType.hashCode;
}
