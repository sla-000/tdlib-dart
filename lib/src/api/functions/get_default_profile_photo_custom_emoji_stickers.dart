// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns default list of custom emoji stickers for placing on a profile
/// photo
/// Returns [Stickers]
@immutable
class GetDefaultProfilePhotoCustomEmojiStickers extends TdFunction {
  const GetDefaultProfilePhotoCustomEmojiStickers();

  static const String constructor = 'getDefaultProfilePhotoCustomEmojiStickers';

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
          other is GetDefaultProfilePhotoCustomEmojiStickers);

  @override
  int get hashCode => runtimeType.hashCode;
}
