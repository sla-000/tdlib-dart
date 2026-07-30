import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
