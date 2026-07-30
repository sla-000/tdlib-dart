// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes a custom text composition style that was created by the current
/// user
/// Returns [Ok]
@immutable
class DeleteTextCompositionStyle extends TdFunction {
  const DeleteTextCompositionStyle({
    required this.name,
  });

  /// [name] Name of the style
  final String name;

  static const String constructor = 'deleteTextCompositionStyle';

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
          other is DeleteTextCompositionStyle &&
          const DeepCollectionEquality().equals(other.name, name));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(name)]);
}
