// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Used to search for supergroup or channel members via a (string) query
@immutable
class SupergroupMembersFilterSearch extends SupergroupMembersFilter {
  const SupergroupMembersFilterSearch({
    required this.query,
  });

  /// [query] Query to search for
  final String query;

  static const String constructor = 'supergroupMembersFilterSearch';

  static SupergroupMembersFilterSearch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SupergroupMembersFilterSearch(
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
          other is SupergroupMembersFilterSearch &&
          const DeepCollectionEquality().equals(other.query, query));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(query)]);
}
