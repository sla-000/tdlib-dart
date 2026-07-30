// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a community consisting of supergroup chats, channel chats and
/// chats with bots
@immutable
class Community extends TdObject {
  const Community({
    required this.id,
    required this.haveAccess,
    required this.name,
    this.photo,
    required this.date,
    required this.status,
    required this.permissions,
  });

  /// [id] Community identifier
  final int id;

  /// [haveAccess] If false, the community is inaccessible, and the only
  /// information known about the community is inside this class. Identifier of
  /// the community can't be passed to any method
  final bool haveAccess;

  /// [name] Community name
  final String name;

  /// [photo] Community photo; may be null
  final ChatPhotoInfo? photo;

  /// [date] Point in time (Unix timestamp) when the community was joined, or
  /// the point in time when the community was created, in case the user is not
  /// a member of any chat in the community
  final int date;

  /// [status] Status of the current user in the community
  final CommunityMemberStatus status;

  /// [permissions] Actions that non-administrator community members are allowed
  /// to take in the community
  final CommunityPermissions permissions;

  static const String constructor = 'community';

  static Community? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Community(
      id: json['id'] as int,
      haveAccess: json['have_access'] as bool,
      name: json['name'] as String,
      photo: ChatPhotoInfo.fromJson(json['photo'] as Map<String, dynamic>?),
      date: json['date'] as int,
      status: CommunityMemberStatus.fromJson(
          json['status'] as Map<String, dynamic>?)!,
      permissions: CommunityPermissions.fromJson(
          json['permissions'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'have_access': haveAccess,
        'name': name,
        'photo': photo?.toJson(),
        'date': date,
        'status': status.toJson(),
        'permissions': permissions.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Community &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.haveAccess, haveAccess) &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality().equals(other.photo, photo) &&
          const DeepCollectionEquality().equals(other.date, date) &&
          const DeepCollectionEquality().equals(other.status, status) &&
          const DeepCollectionEquality()
              .equals(other.permissions, permissions));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(haveAccess),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(photo),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(permissions)
      ]);
}
