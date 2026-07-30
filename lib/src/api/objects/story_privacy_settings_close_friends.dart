// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The story can be viewed by all close friends
@immutable
class StoryPrivacySettingsCloseFriends extends StoryPrivacySettings {
  const StoryPrivacySettingsCloseFriends();

  static const String constructor = 'storyPrivacySettingsCloseFriends';

  static StoryPrivacySettingsCloseFriends? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StoryPrivacySettingsCloseFriends();
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
          other is StoryPrivacySettingsCloseFriends);

  @override
  int get hashCode => runtimeType.hashCode;
}
