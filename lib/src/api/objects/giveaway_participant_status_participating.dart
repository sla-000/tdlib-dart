// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user participates in the giveaway
@immutable
class GiveawayParticipantStatusParticipating extends GiveawayParticipantStatus {
  const GiveawayParticipantStatusParticipating();

  static const String constructor = 'giveawayParticipantStatusParticipating';

  static GiveawayParticipantStatusParticipating? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GiveawayParticipantStatusParticipating();
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
          other is GiveawayParticipantStatusParticipating);

  @override
  int get hashCode => runtimeType.hashCode;
}
