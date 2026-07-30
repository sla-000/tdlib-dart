// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the value of an option by its name. (Check the list of available
/// options on https://core.telegram.org/tdlib/options.) Can be called before
/// authorization. Can be called synchronously for options "version" and
/// "commit_hash"
/// Returns [OptionValue]
@immutable
class GetOption extends TdFunction {
  const GetOption({
    required this.name,
  });

  /// [name] The name of the option
  final String name;

  static const String constructor = 'getOption';

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
          other is GetOption &&
          const DeepCollectionEquality().equals(other.name, name));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(name)]);
}
