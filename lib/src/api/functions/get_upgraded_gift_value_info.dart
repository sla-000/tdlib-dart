// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about value of an upgraded gift by its name
/// Returns [UpgradedGiftValueInfo]
@immutable
class GetUpgradedGiftValueInfo extends TdFunction {
  const GetUpgradedGiftValueInfo({
    required this.name,
  });

  /// [name] Unique name of the upgraded gift
  final String name;

  static const String constructor = 'getUpgradedGiftValueInfo';

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
          other is GetUpgradedGiftValueInfo &&
          const DeepCollectionEquality().equals(other.name, name));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(name)]);
}
