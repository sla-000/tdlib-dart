// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A birthdate was suggested to be set
@immutable
class PushMessageContentSuggestBirthdate extends PushMessageContent {
  const PushMessageContentSuggestBirthdate();

  static const String constructor = 'pushMessageContentSuggestBirthdate';

  static PushMessageContentSuggestBirthdate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentSuggestBirthdate();
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
      (other.runtimeType == runtimeType &&
          other is PushMessageContentSuggestBirthdate);

  @override
  int get hashCode => runtimeType.hashCode;
}
