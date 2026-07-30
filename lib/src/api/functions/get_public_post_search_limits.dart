// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Checks public post search limits without actually performing the search
/// Returns [PublicPostSearchLimits]
@immutable
class GetPublicPostSearchLimits extends TdFunction {
  const GetPublicPostSearchLimits({
    required this.query,
  });

  /// [query] Query that will be searched for
  final String query;

  static const String constructor = 'getPublicPostSearchLimits';

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
          other is GetPublicPostSearchLimits &&
          const DeepCollectionEquality().equals(other.query, query));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(query)]);
}
