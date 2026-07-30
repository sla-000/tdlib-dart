// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Information about the email address authentication code that was sent
@immutable
class EmailAddressAuthenticationCodeInfo extends TdObject {
  const EmailAddressAuthenticationCodeInfo({
    required this.emailAddressPattern,
    required this.length,
  });

  /// [emailAddressPattern] Pattern of the email address to which an
  /// authentication code was sent
  final String emailAddressPattern;

  /// [length] Length of the code; 0 if unknown
  final int length;

  static const String constructor = 'emailAddressAuthenticationCodeInfo';

  static EmailAddressAuthenticationCodeInfo? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmailAddressAuthenticationCodeInfo(
      emailAddressPattern: json['email_address_pattern'] as String,
      length: json['length'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'email_address_pattern': emailAddressPattern,
        'length': length,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EmailAddressAuthenticationCodeInfo &&
          const DeepCollectionEquality()
              .equals(other.emailAddressPattern, emailAddressPattern) &&
          const DeepCollectionEquality().equals(other.length, length));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(emailAddressPattern),
        const DeepCollectionEquality().hash(length)
      ]);
}
