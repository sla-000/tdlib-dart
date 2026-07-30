// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the owner and administrators
@immutable
class SupergroupMembersFilterAdministrators extends SupergroupMembersFilter {
  const SupergroupMembersFilterAdministrators();

  static const String constructor = 'supergroupMembersFilterAdministrators';

  static SupergroupMembersFilterAdministrators? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SupergroupMembersFilterAdministrators();
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
          other is SupergroupMembersFilterAdministrators);

  @override
  int get hashCode => runtimeType.hashCode;
}
