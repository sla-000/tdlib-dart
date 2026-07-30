import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
