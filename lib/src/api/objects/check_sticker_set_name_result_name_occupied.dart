// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The name is occupied
@immutable
class CheckStickerSetNameResultNameOccupied extends CheckStickerSetNameResult {
  const CheckStickerSetNameResultNameOccupied();

  static const String constructor = 'checkStickerSetNameResultNameOccupied';

  static CheckStickerSetNameResultNameOccupied? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CheckStickerSetNameResultNameOccupied();
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
          other is CheckStickerSetNameResultNameOccupied);

  @override
  int get hashCode => runtimeType.hashCode;
}
