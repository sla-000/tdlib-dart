// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about features, available to Business users
/// Returns [BusinessFeatures]
@immutable
class GetBusinessFeatures extends TdFunction {
  const GetBusinessFeatures({
    this.source,
  });

  /// [source] Source of the request; pass null if the method is called from
  /// settings or some non-standard source
  final BusinessFeature? source;

  static const String constructor = 'getBusinessFeatures';

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
          other is GetBusinessFeatures &&
          const DeepCollectionEquality().equals(other.source, source));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(source)]);
}
