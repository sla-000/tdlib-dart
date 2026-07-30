// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The name is invalid
@immutable
class CheckStickerSetNameResultNameInvalid extends CheckStickerSetNameResult {
  const CheckStickerSetNameResultNameInvalid();

  static const String constructor = 'checkStickerSetNameResultNameInvalid';

  static CheckStickerSetNameResultNameInvalid? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CheckStickerSetNameResultNameInvalid();
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
      (other.runtimeType == runtimeType &&
          other is CheckStickerSetNameResultNameInvalid);

  @override
  int get hashCode => runtimeType.hashCode;
}
