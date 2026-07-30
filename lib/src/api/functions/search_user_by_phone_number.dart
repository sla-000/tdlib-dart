// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Searches a user by their phone number. Returns a 404 error if the user
/// can't be found
/// Returns [User]
@immutable
class SearchUserByPhoneNumber extends TdFunction {
  const SearchUserByPhoneNumber({
    required this.phoneNumber,
    required this.onlyLocal,
  });

  /// [phoneNumber] Phone number to search for
  final String phoneNumber;

  /// [onlyLocal] Pass true to get only locally available information without
  /// sending network requests
  final bool onlyLocal;

  static const String constructor = 'searchUserByPhoneNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'phone_number': phoneNumber,
        'only_local': onlyLocal,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SearchUserByPhoneNumber &&
          const DeepCollectionEquality()
              .equals(other.phoneNumber, phoneNumber) &&
          const DeepCollectionEquality().equals(other.onlyLocal, onlyLocal));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(phoneNumber),
        const DeepCollectionEquality().hash(onlyLocal)
      ]);
}
