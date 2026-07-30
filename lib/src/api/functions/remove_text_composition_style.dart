// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Removes a custom text composition style from the list of used by the user
/// styles. If the style was created by the current user, then it can only be
/// deleted
/// Returns [Ok]
@immutable
class RemoveTextCompositionStyle extends TdFunction {
  const RemoveTextCompositionStyle({
    required this.name,
  });

  /// [name] Name of the style
  final String name;

  static const String constructor = 'removeTextCompositionStyle';

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
          other is RemoveTextCompositionStyle &&
          const DeepCollectionEquality().equals(other.name, name));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(name)]);
}
