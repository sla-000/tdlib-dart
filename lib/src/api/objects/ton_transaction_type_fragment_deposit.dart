import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a deposit of Grams from Fragment
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
      isGift: json['is_gift'] as bool,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
