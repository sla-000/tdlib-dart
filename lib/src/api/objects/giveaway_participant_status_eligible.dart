// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user is eligible for the giveaway
@immutable
class GiveawayParticipantStatusEligible extends GiveawayParticipantStatus {
  const GiveawayParticipantStatusEligible();

  static const String constructor = 'giveawayParticipantStatusEligible';

  static GiveawayParticipantStatusEligible? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GiveawayParticipantStatusEligible();
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
          other is GiveawayParticipantStatusEligible);

  @override
  int get hashCode => runtimeType.hashCode;
}
