// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's temporary
/// registration
@immutable
class InputPassportElementTemporaryRegistration extends InputPassportElement {
  const InputPassportElementTemporaryRegistration({
    required this.temporaryRegistration,
  });

  /// [temporaryRegistration] The temporary registration document to be saved
  final InputPersonalDocument temporaryRegistration;

  static const String constructor = 'inputPassportElementTemporaryRegistration';

  static InputPassportElementTemporaryRegistration? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementTemporaryRegistration(
      temporaryRegistration: InputPersonalDocument.fromJson(
          json['temporary_registration'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'temporary_registration': temporaryRegistration.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPassportElementTemporaryRegistration &&
          const DeepCollectionEquality()
              .equals(other.temporaryRegistration, temporaryRegistration));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(temporaryRegistration)
      ]);
}
