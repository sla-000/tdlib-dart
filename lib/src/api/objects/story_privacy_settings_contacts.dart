// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The story can be viewed by all contacts except chosen users
@immutable
class StoryPrivacySettingsContacts extends StoryPrivacySettings {
  const StoryPrivacySettingsContacts({
    required this.exceptUserIds,
  });

  /// [exceptUserIds] User identifiers of the contacts that can't see the story;
  /// always unknown and empty for non-owned stories
  final List<int> exceptUserIds;

  static const String constructor = 'storyPrivacySettingsContacts';

  static StoryPrivacySettingsContacts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryPrivacySettingsContacts(
      exceptUserIds: List<int>.from(
          ((json['except_user_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
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
          other is StoryPrivacySettingsContacts &&
          const DeepCollectionEquality()
              .equals(other.exceptUserIds, exceptUserIds));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(exceptUserIds)]);
}
