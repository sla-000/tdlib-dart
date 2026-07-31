// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a deposit of Toncoins from Fragment
@immutable
class TonTransactionTypeFragmentDeposit extends TonTransactionType {
  const TonTransactionTypeFragmentDeposit({
    required this.isGift,
    this.sticker,
  });

  /// [isGift] True, if the transaction is a gift from another user
  final bool isGift;

  /// [sticker] The sticker to be shown in the transaction information; may be
  /// null if unknown
  final Sticker? sticker;

  static const String constructor = 'tonTransactionTypeFragmentDeposit';

  static TonTransactionTypeFragmentDeposit? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TonTransactionTypeFragmentDeposit(
      isGift: (json['is_gift'] as bool?) ?? false,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_gift': isGift,
        'sticker': sticker?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TonTransactionTypeFragmentDeposit &&
          const DeepCollectionEquality().equals(other.isGift, isGift) &&
          const DeepCollectionEquality().equals(other.sticker, sticker));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(isGift),
        const DeepCollectionEquality().hash(sticker)
      ]);
}
