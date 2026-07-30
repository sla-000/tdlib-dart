// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An authentication code is a word delivered via an SMS message to the
/// specified phone number; non-official applications may not receive this
/// type of code
@immutable
class AuthenticationCodeTypeSmsWord extends AuthenticationCodeType {
  const AuthenticationCodeTypeSmsWord({
    required this.firstLetter,
  });

  /// [firstLetter] The first letters of the word if known
  final String firstLetter;

  static const String constructor = 'authenticationCodeTypeSmsWord';

  static AuthenticationCodeTypeSmsWord? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeSmsWord(
      firstLetter: json['first_letter'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'first_letter': firstLetter,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AuthenticationCodeTypeSmsWord &&
          const DeepCollectionEquality()
              .equals(other.firstLetter, firstLetter));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(firstLetter)]);
}
