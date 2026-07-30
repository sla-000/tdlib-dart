// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A profile photo was suggested to the user
@immutable
class PushMessageContentSuggestProfilePhoto extends PushMessageContent {
  const PushMessageContentSuggestProfilePhoto();

  static const String constructor = 'pushMessageContentSuggestProfilePhoto';

  static PushMessageContentSuggestProfilePhoto? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentSuggestProfilePhoto();
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
          other is PushMessageContentSuggestProfilePhoto);

  @override
  int get hashCode => runtimeType.hashCode;
}
