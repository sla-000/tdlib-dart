// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A regular user
@immutable
class UserTypeRegular extends UserType {
  const UserTypeRegular();

  static const String constructor = 'userTypeRegular';

  static UserTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserTypeRegular();
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
      (other.runtimeType == runtimeType && other is UserTypeRegular);

  @override
  int get hashCode => runtimeType.hashCode;
}
