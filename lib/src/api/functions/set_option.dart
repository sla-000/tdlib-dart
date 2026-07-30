// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets the value of an option. (Check the list of available options on
/// https://core.telegram.org/tdlib/options.) Only writable options can be
/// set. Can be called before authorization
/// Returns [Ok]
@immutable
class SetOption extends TdFunction {
  const SetOption({
    required this.name,
    this.value,
  });

  /// [name] The name of the option
  final String name;

  /// [value] The new value of the option; pass null to reset option value to a
  /// default value
  final OptionValue? value;

  static const String constructor = 'setOption';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'value': value?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetOption &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality().equals(other.value, value));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(value)
      ]);
}
