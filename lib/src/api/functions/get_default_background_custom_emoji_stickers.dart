// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns default list of custom emoji stickers for reply background
/// Returns [Stickers]
@immutable
class GetDefaultBackgroundCustomEmojiStickers extends TdFunction {
  const GetDefaultBackgroundCustomEmojiStickers();

  static const String constructor = 'getDefaultBackgroundCustomEmojiStickers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetDefaultBackgroundCustomEmojiStickers);

  @override
  int get hashCode => runtimeType.hashCode;
}
