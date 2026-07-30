// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns recently active users in reverse chronological order
@immutable
class SupergroupMembersFilterRecent extends SupergroupMembersFilter {
  const SupergroupMembersFilterRecent();

  static const String constructor = 'supergroupMembersFilterRecent';

  static SupergroupMembersFilterRecent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SupergroupMembersFilterRecent();
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
          other is SupergroupMembersFilterRecent);

  @override
  int get hashCode => runtimeType.hashCode;
}
