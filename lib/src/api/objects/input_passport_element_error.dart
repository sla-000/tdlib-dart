// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains the description of an error in a Telegram Passport element; for
/// bots only
@immutable
class InputPassportElementError extends TdObject {
  const InputPassportElementError({
    required this.type,
    required this.message,
    required this.source,
  });

  /// [type] Type of Telegram Passport element that has the error
  final PassportElementType type;

  /// [message] Error message
  final String message;

  /// [source] Error source
  final InputPassportElementErrorSource source;

  static const String constructor = 'inputPassportElementError';

  static InputPassportElementError? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementError(
      type:
          PassportElementType.fromJson(json['type'] as Map<String, dynamic>?)!,
      message: json['message'] as String,
      source: InputPassportElementErrorSource.fromJson(
          json['source'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        'message': message,
        'source': source.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPassportElementError &&
          const DeepCollectionEquality().equals(other.type, type) &&
          const DeepCollectionEquality().equals(other.message, message) &&
          const DeepCollectionEquality().equals(other.source, source));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(message),
        const DeepCollectionEquality().hash(source)
      ]);
}
