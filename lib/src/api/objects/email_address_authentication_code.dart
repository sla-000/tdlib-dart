// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An authentication code delivered to a user's email address
@immutable
class EmailAddressAuthenticationCode extends EmailAddressAuthentication {
  const EmailAddressAuthenticationCode({
    required this.code,
  });

  /// [code] The code
  final String code;

  static const String constructor = 'emailAddressAuthenticationCode';

  static EmailAddressAuthenticationCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmailAddressAuthenticationCode(
      code: json['code'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'code': code,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EmailAddressAuthenticationCode &&
          const DeepCollectionEquality().equals(other.code, code));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(code)]);
}
