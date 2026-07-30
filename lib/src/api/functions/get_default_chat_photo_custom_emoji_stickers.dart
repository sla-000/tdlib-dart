// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns default list of custom emoji stickers for placing on a chat photo
/// Returns [Stickers]
@immutable
class GetDefaultChatPhotoCustomEmojiStickers extends TdFunction {
  const GetDefaultChatPhotoCustomEmojiStickers();

  static const String constructor = 'getDefaultChatPhotoCustomEmojiStickers';

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
          other is GetDefaultChatPhotoCustomEmojiStickers);

  @override
  int get hashCode => runtimeType.hashCode;
}
