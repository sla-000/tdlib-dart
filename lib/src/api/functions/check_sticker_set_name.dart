// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Checks whether a name can be used for a new sticker set
/// Returns [CheckStickerSetNameResult]
@immutable
class CheckStickerSetName extends TdFunction {
  const CheckStickerSetName({
    required this.name,
  });

  /// [name] Name to be checked
  final String name;

  static const String constructor = 'checkStickerSetName';

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
          other is CheckStickerSetName &&
          const DeepCollectionEquality().equals(other.name, name));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(name)]);
}
