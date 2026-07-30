// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Validates the order information provided by a user and returns the
/// available shipping options for a flexible invoice
/// Returns [ValidatedOrderInfo]
@immutable
class ValidateOrderInfo extends TdFunction {
  const ValidateOrderInfo({
    required this.inputInvoice,
    this.orderInfo,
    required this.allowSave,
  });

  /// [inputInvoice] The invoice
  final InputInvoice inputInvoice;

  /// [orderInfo] The order information, provided by the user; pass null if
  /// empty
  final OrderInfo? orderInfo;

  /// [allowSave] Pass true to save the order information
  final bool allowSave;

  static const String constructor = 'validateOrderInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'input_invoice': inputInvoice.toJson(),
        'order_info': orderInfo?.toJson(),
        'allow_save': allowSave,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ValidateOrderInfo &&
          const DeepCollectionEquality()
              .equals(other.inputInvoice, inputInvoice) &&
          const DeepCollectionEquality().equals(other.orderInfo, orderInfo) &&
          const DeepCollectionEquality().equals(other.allowSave, allowSave));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(inputInvoice),
        const DeepCollectionEquality().hash(orderInfo),
        const DeepCollectionEquality().hash(allowSave)
      ]);
}
