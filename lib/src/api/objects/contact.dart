// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a contact of a user
@immutable
class Contact extends TdObject {
  const Contact({
    required this.phoneNumber,
    required this.firstName,
    required this.lastName,
    required this.vcard,
    required this.userId,
  });

  /// [phoneNumber] Phone number of the user
  final String phoneNumber;

  /// [firstName] First name of the user; 1-64 characters
  final String firstName;

  /// [lastName] Last name of the user; 0-64 characters
  final String lastName;

  /// [vcard] Additional data about the user in a form of vCard; 0-2048 bytes in
  /// length
  final String vcard;

  /// [userId] Identifier of the user, if known; 0 otherwise
  final int userId;

  static const String constructor = 'contact';

  static Contact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Contact(
      phoneNumber: (json['phone_number'] as String?) ?? '',
      firstName: (json['first_name'] as String?) ?? '',
      lastName: (json['last_name'] as String?) ?? '',
      vcard: (json['vcard'] as String?) ?? '',
      userId: (json['user_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'phone_number': phoneNumber,
        'first_name': firstName,
        'last_name': lastName,
        'vcard': vcard,
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Contact &&
          const DeepCollectionEquality()
              .equals(other.phoneNumber, phoneNumber) &&
          const DeepCollectionEquality().equals(other.firstName, firstName) &&
          const DeepCollectionEquality().equals(other.lastName, lastName) &&
          const DeepCollectionEquality().equals(other.vcard, vcard) &&
          const DeepCollectionEquality().equals(other.userId, userId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(phoneNumber),
        const DeepCollectionEquality().hash(firstName),
        const DeepCollectionEquality().hash(lastName),
        const DeepCollectionEquality().hash(vcard),
        const DeepCollectionEquality().hash(userId)
      ]);
}
