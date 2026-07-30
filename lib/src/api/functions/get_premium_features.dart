// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about features, available to Premium users
/// Returns [PremiumFeatures]
@immutable
class GetPremiumFeatures extends TdFunction {
  const GetPremiumFeatures({
    this.source,
  });

  /// [source] Source of the request; pass null if the method is called from
  /// some non-standard source
  final PremiumSource? source;

  static const String constructor = 'getPremiumFeatures';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'source': source?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetPremiumFeatures &&
          const DeepCollectionEquality().equals(other.source, source));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(source)]);
}
