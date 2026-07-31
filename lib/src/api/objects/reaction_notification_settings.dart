// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about notification settings for reactions and poll
/// votes
@immutable
class ReactionNotificationSettings extends TdObject {
  const ReactionNotificationSettings({
    required this.messageReactionSource,
    required this.storyReactionSource,
    required this.pollVoteSource,
    required this.soundId,
    required this.showPreview,
  });

  /// [messageReactionSource] Source of message reactions for which
  /// notifications are shown
  final ReactionNotificationSource messageReactionSource;

  /// [storyReactionSource] Source of story reactions for which notifications
  /// are shown
  final ReactionNotificationSource storyReactionSource;

  /// [pollVoteSource] Source of poll votes for which notifications are shown
  final ReactionNotificationSource pollVoteSource;

  /// [soundId] Identifier of the notification sound to be played; 0 if sound is
  /// disabled
  final int soundId;

  /// [showPreview] True, if reaction sender and emoji must be displayed in
  /// notifications
  final bool showPreview;

  static const String constructor = 'reactionNotificationSettings';

  static ReactionNotificationSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReactionNotificationSettings(
      messageReactionSource: ReactionNotificationSource.fromJson(
          json['message_reaction_source'] as Map<String, dynamic>?)!,
      storyReactionSource: ReactionNotificationSource.fromJson(
          json['story_reaction_source'] as Map<String, dynamic>?)!,
      pollVoteSource: ReactionNotificationSource.fromJson(
          json['poll_vote_source'] as Map<String, dynamic>?)!,
      soundId: (json['sound_id'] is int
              ? json['sound_id'] as int
              : int.tryParse(json['sound_id']?.toString() ?? '')) ??
          0,
      showPreview: (json['show_preview'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_reaction_source': messageReactionSource.toJson(),
        'story_reaction_source': storyReactionSource.toJson(),
        'poll_vote_source': pollVoteSource.toJson(),
        'sound_id': soundId.toString(),
        'show_preview': showPreview,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReactionNotificationSettings &&
          const DeepCollectionEquality()
              .equals(other.messageReactionSource, messageReactionSource) &&
          const DeepCollectionEquality()
              .equals(other.storyReactionSource, storyReactionSource) &&
          const DeepCollectionEquality()
              .equals(other.pollVoteSource, pollVoteSource) &&
          const DeepCollectionEquality().equals(other.soundId, soundId) &&
          const DeepCollectionEquality()
              .equals(other.showPreview, showPreview));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(messageReactionSource),
        const DeepCollectionEquality().hash(storyReactionSource),
        const DeepCollectionEquality().hash(pollVoteSource),
        const DeepCollectionEquality().hash(soundId),
        const DeepCollectionEquality().hash(showPreview)
      ]);
}
