// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat must be boosted first by Telegram Premium subscribers to post
/// more stories. Call getChatBoostStatus to get current boost status of the
/// chat
@immutable
class CanPostStoryResultBoostNeeded extends CanPostStoryResult {
  const CanPostStoryResultBoostNeeded();

  static const String constructor = 'canPostStoryResultBoostNeeded';

  static CanPostStoryResultBoostNeeded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanPostStoryResultBoostNeeded();
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
          other is CanPostStoryResultBoostNeeded);

  @override
  int get hashCode => runtimeType.hashCode;
}
