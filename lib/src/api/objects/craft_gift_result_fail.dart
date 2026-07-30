// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Crafting has failed
@immutable
class CraftGiftResultFail extends CraftGiftResult {
  const CraftGiftResultFail();

  static const String constructor = 'craftGiftResultFail';

  static CraftGiftResultFail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CraftGiftResultFail();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is CraftGiftResultFail);

  @override
  int get hashCode => runtimeType.hashCode;
}
