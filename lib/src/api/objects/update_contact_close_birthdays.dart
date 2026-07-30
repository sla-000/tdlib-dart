// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The list of contacts that had birthdays recently or will have birthday
/// soon has changed
@immutable
class UpdateContactCloseBirthdays extends Update {
  const UpdateContactCloseBirthdays({
    required this.closeBirthdayUsers,
  });

  /// [closeBirthdayUsers] List of contact users with close birthday
  final List<CloseBirthdayUser> closeBirthdayUsers;

  static const String constructor = 'updateContactCloseBirthdays';

  static UpdateContactCloseBirthdays? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateContactCloseBirthdays(
      closeBirthdayUsers: List<CloseBirthdayUser>.from(
          ((json['close_birthday_users'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => CloseBirthdayUser.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'close_birthday_users':
            closeBirthdayUsers.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateContactCloseBirthdays &&
          const DeepCollectionEquality()
              .equals(other.closeBirthdayUsers, closeBirthdayUsers));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(closeBirthdayUsers)]);
}
