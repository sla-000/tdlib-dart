// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A chat photo was edited
@immutable
class PushMessageContentChatChangePhoto extends PushMessageContent {
  const PushMessageContentChatChangePhoto();

  static const String constructor = 'pushMessageContentChatChangePhoto';

  static PushMessageContentChatChangePhoto? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentChatChangePhoto();
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
          other is PushMessageContentChatChangePhoto);

  @override
  int get hashCode => runtimeType.hashCode;
}
