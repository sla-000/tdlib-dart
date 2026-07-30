// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns network data usage statistics. Can be called before authorization
/// Returns [NetworkStatistics]
@immutable
class GetNetworkStatistics extends TdFunction {
  const GetNetworkStatistics({
    required this.onlyCurrent,
  });

  /// [onlyCurrent] Pass true to get statistics only for the current library
  /// launch
  final bool onlyCurrent;

  static const String constructor = 'getNetworkStatistics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'only_current': onlyCurrent,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetNetworkStatistics &&
          const DeepCollectionEquality()
              .equals(other.onlyCurrent, onlyCurrent));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(onlyCurrent)]);
}
