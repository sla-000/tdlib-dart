// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The story can be viewed by everyone
@immutable
class StoryPrivacySettingsEveryone extends StoryPrivacySettings {
  const StoryPrivacySettingsEveryone({
    required this.exceptUserIds,
  });

  /// [exceptUserIds] Identifiers of the users that can't see the story; always
  /// unknown and empty for non-owned stories
  final List<int> exceptUserIds;

  static const String constructor = 'storyPrivacySettingsEveryone';

  static StoryPrivacySettingsEveryone? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryPrivacySettingsEveryone(
      exceptUserIds: List<int>.from(
          ((json['except_user_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'except_user_ids': exceptUserIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StoryPrivacySettingsEveryone &&
          const DeepCollectionEquality()
              .equals(other.exceptUserIds, exceptUserIds));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(exceptUserIds)]);
}
