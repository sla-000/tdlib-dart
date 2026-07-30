// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Finishes user registration. Works only when the current authorization
/// state is authorizationStateWaitRegistration
/// Returns [Ok]
@immutable
class RegisterUser extends TdFunction {
  const RegisterUser({
    required this.firstName,
    required this.lastName,
    required this.disableNotification,
  });

  /// [firstName] The first name of the user; 1-64 characters
  final String firstName;

  /// [lastName] The last name of the user; 0-64 characters
  final String lastName;

  /// [disableNotification] Pass true to disable notification about the current
  /// user joining Telegram for other users that added them to contact list
  final bool disableNotification;

  static const String constructor = 'registerUser';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'first_name': firstName,
        'last_name': lastName,
        'disable_notification': disableNotification,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RegisterUser &&
          const DeepCollectionEquality().equals(other.firstName, firstName) &&
          const DeepCollectionEquality().equals(other.lastName, lastName) &&
          const DeepCollectionEquality()
              .equals(other.disableNotification, disableNotification));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(firstName),
        const DeepCollectionEquality().hash(lastName),
        const DeepCollectionEquality().hash(disableNotification)
      ]);
}
