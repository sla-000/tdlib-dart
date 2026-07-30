// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's email address
@immutable
class PassportElementEmailAddress extends PassportElement {
  const PassportElementEmailAddress({
    required this.emailAddress,
  });

  /// [emailAddress] Email address
  final String emailAddress;

  static const String constructor = 'passportElementEmailAddress';

  static PassportElementEmailAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementEmailAddress(
      emailAddress: (json['email_address'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'email_address': emailAddress,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PassportElementEmailAddress &&
          const DeepCollectionEquality()
              .equals(other.emailAddress, emailAddress));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(emailAddress)]);
}
