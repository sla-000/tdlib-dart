// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains custom information about the user
@immutable
class UserSupportInfo extends TdObject {
  const UserSupportInfo({
    required this.message,
    required this.author,
    required this.date,
  });

  /// [message] Information message
  final FormattedText message;

  /// [author] Information author
  final String author;

  /// [date] Information change date
  final int date;

  static const String constructor = 'userSupportInfo';

  static UserSupportInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserSupportInfo(
      message:
          FormattedText.fromJson(json['message'] as Map<String, dynamic>?)!,
      author: (json['author'] as String?) ?? '',
      date: (json['date'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message.toJson(),
        'author': author,
        'date': date,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UserSupportInfo &&
          const DeepCollectionEquality().equals(other.message, message) &&
          const DeepCollectionEquality().equals(other.author, author) &&
          const DeepCollectionEquality().equals(other.date, date));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(message),
        const DeepCollectionEquality().hash(author),
        const DeepCollectionEquality().hash(date)
      ]);
}
