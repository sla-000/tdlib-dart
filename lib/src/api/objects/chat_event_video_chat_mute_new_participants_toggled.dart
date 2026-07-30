// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The mute_new_participants setting of a video chat was toggled
@immutable
class ChatEventVideoChatMuteNewParticipantsToggled extends ChatEventAction {
  const ChatEventVideoChatMuteNewParticipantsToggled({
    required this.muteNewParticipants,
  });

  /// [muteNewParticipants] New value of the mute_new_participants setting
  final bool muteNewParticipants;

  static const String constructor =
      'chatEventVideoChatMuteNewParticipantsToggled';

  static ChatEventVideoChatMuteNewParticipantsToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventVideoChatMuteNewParticipantsToggled(
      muteNewParticipants: json['mute_new_participants'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'mute_new_participants': muteNewParticipants,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventVideoChatMuteNewParticipantsToggled &&
          const DeepCollectionEquality()
              .equals(other.muteNewParticipants, muteNewParticipants));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(muteNewParticipants)]);
}
