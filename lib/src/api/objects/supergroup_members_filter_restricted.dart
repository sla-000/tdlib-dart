// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns restricted supergroup members; can be used only by administrators
@immutable
class SupergroupMembersFilterRestricted extends SupergroupMembersFilter {
  const SupergroupMembersFilterRestricted({
    required this.query,
  });

  /// [query] Query to search for
  final String query;

  static const String constructor = 'supergroupMembersFilterRestricted';

  static SupergroupMembersFilterRestricted? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SupergroupMembersFilterRestricted(
      query: json['query'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'query': query,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SupergroupMembersFilterRestricted &&
          const DeepCollectionEquality().equals(other.query, query));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(query)]);
}
