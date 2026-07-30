// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user can't participate in the giveaway, because they have already been
/// member of the chat
@immutable
class GiveawayParticipantStatusAlreadyWasMember
    extends GiveawayParticipantStatus {
  const GiveawayParticipantStatusAlreadyWasMember({
    required this.joinedChatDate,
  });

  /// [joinedChatDate] Point in time (Unix timestamp) when the user joined the
  /// chat
  final int joinedChatDate;

  static const String constructor = 'giveawayParticipantStatusAlreadyWasMember';

  static GiveawayParticipantStatusAlreadyWasMember? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiveawayParticipantStatusAlreadyWasMember(
      joinedChatDate: (json['joined_chat_date'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'joined_chat_date': joinedChatDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiveawayParticipantStatusAlreadyWasMember &&
          const DeepCollectionEquality()
              .equals(other.joinedChatDate, joinedChatDate));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(joinedChatDate)]);
}
