import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
