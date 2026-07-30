// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// No information on the user besides the user identifier is available, yet
/// this user has not been deleted. This object is extremely rare and must be
/// handled like a deleted user. It is not possible to perform any actions on
/// users of this type
@immutable
class UserTypeUnknown extends UserType {
  const UserTypeUnknown();

  static const String constructor = 'userTypeUnknown';

  static UserTypeUnknown? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserTypeUnknown();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is UserTypeUnknown);

  @override
  int get hashCode => runtimeType.hashCode;
}
