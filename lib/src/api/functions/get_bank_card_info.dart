// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a bank card
/// Returns [BankCardInfo]
@immutable
class GetBankCardInfo extends TdFunction {
  const GetBankCardInfo({
    required this.bankCardNumber,
  });

  /// [bankCardNumber] The bank card number
  final String bankCardNumber;

  static const String constructor = 'getBankCardInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bank_card_number': bankCardNumber,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetBankCardInfo &&
          const DeepCollectionEquality()
              .equals(other.bankCardNumber, bankCardNumber));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(bankCardNumber)]);
}
