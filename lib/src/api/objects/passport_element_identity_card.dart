// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's identity card
@immutable
class PassportElementIdentityCard extends PassportElement {
  const PassportElementIdentityCard({
    required this.identityCard,
  });

  /// [identityCard] Identity card
  final IdentityDocument identityCard;

  static const String constructor = 'passportElementIdentityCard';

  static PassportElementIdentityCard? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementIdentityCard(
      identityCard: IdentityDocument.fromJson(
          json['identity_card'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'identity_card': identityCard.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PassportElementIdentityCard &&
          const DeepCollectionEquality()
              .equals(other.identityCard, identityCard));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(identityCard)]);
}
