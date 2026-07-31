// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns affiliate programs that were connected to the given affiliate
/// Returns [ConnectedAffiliatePrograms]
@immutable
class GetConnectedAffiliatePrograms extends TdFunction {
  const GetConnectedAffiliatePrograms({
    required this.affiliate,
    required this.offset,
    required this.limit,
  });

  /// [affiliate] The affiliate to which the affiliate program were connected
  final AffiliateType affiliate;

  /// [offset] Offset of the first affiliate program to return as received from
  /// the previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of affiliate programs to return
  final int limit;

  static const String constructor = 'getConnectedAffiliatePrograms';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'affiliate': affiliate.toJson(),
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetConnectedAffiliatePrograms &&
          const DeepCollectionEquality().equals(other.affiliate, affiliate) &&
          const DeepCollectionEquality().equals(other.offset, offset) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(affiliate),
        const DeepCollectionEquality().hash(offset),
        const DeepCollectionEquality().hash(limit)
      ]);
}
