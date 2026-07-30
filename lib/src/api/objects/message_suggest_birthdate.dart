// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A birthdate was suggested to be set
@immutable
class MessageSuggestBirthdate extends MessageContent {
  const MessageSuggestBirthdate({
    required this.birthdate,
  });

  /// [birthdate] The suggested birthdate. Use the method setBirthdate to apply
  /// the birthdate
  final Birthdate birthdate;

  static const String constructor = 'messageSuggestBirthdate';

  static MessageSuggestBirthdate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSuggestBirthdate(
      birthdate:
          Birthdate.fromJson(json['birthdate'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'birthdate': birthdate.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageSuggestBirthdate &&
          const DeepCollectionEquality().equals(other.birthdate, birthdate));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(birthdate)]);
}
