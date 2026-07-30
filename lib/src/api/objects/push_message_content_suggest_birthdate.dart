import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
