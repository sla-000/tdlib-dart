// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes privacy settings of a story. The method can be called only for
/// stories posted on behalf of the current user and if
/// story.can_set_privacy_settings == true
/// Returns [Ok]
@immutable
class SetStoryPrivacySettings extends TdFunction {
  const SetStoryPrivacySettings({
    required this.storyId,
    required this.privacySettings,
  });

  /// [storyId] Identifier of the story
  final int storyId;

  /// [privacySettings] The new privacy settings for the story
  final StoryPrivacySettings privacySettings;

  static const String constructor = 'setStoryPrivacySettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_id': storyId,
        'privacy_settings': privacySettings.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetStoryPrivacySettings &&
          const DeepCollectionEquality().equals(other.storyId, storyId) &&
          const DeepCollectionEquality()
              .equals(other.privacySettings, privacySettings));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(storyId),
        const DeepCollectionEquality().hash(privacySettings)
      ]);
}
