import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
