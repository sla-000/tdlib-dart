// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A newly created basic group
@immutable
class PushMessageContentBasicGroupChatCreate extends PushMessageContent {
  const PushMessageContentBasicGroupChatCreate();

  static const String constructor = 'pushMessageContentBasicGroupChatCreate';

  static PushMessageContentBasicGroupChatCreate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentBasicGroupChatCreate();
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
          other is PushMessageContentBasicGroupChatCreate);

  @override
  int get hashCode => runtimeType.hashCode;
}
