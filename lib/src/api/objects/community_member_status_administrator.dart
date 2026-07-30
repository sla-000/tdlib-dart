// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user is a member of the community and has some additional privileges
@immutable
class CommunityMemberStatusAdministrator extends CommunityMemberStatus {
  const CommunityMemberStatusAdministrator({
    required this.canBeEdited,
    required this.rights,
  });

  /// [canBeEdited] True, if the current user can edit the administrator
  /// privileges for the called user
  final bool canBeEdited;

  /// [rights] Rights of the administrator
  final CommunityAdministratorRights rights;

  static const String constructor = 'communityMemberStatusAdministrator';

  static CommunityMemberStatusAdministrator? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CommunityMemberStatusAdministrator(
      canBeEdited: (json['can_be_edited'] as bool?) ?? false,
      rights: CommunityAdministratorRights.fromJson(
          json['rights'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'can_be_edited': canBeEdited,
        'rights': rights.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CommunityMemberStatusAdministrator &&
          const DeepCollectionEquality()
              .equals(other.canBeEdited, canBeEdited) &&
          const DeepCollectionEquality().equals(other.rights, rights));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(canBeEdited),
        const DeepCollectionEquality().hash(rights)
      ]);
}
