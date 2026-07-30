// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about an upgraded gift by its name
/// Returns [UpgradedGift]
@immutable
class GetUpgradedGift extends TdFunction {
  const GetUpgradedGift({
    required this.name,
  });

  /// [name] Unique name of the upgraded gift
  final String name;

  static const String constructor = 'getUpgradedGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetUpgradedGift &&
          const DeepCollectionEquality().equals(other.name, name));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(name)]);
}
