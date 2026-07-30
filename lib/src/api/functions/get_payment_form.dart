// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns an invoice payment form. This method must be called when the user
/// presses inline button of the type inlineKeyboardButtonTypeBuy, or wants to
/// buy access to media in a messagePaidMedia message
/// Returns [PaymentForm]
@immutable
class GetPaymentForm extends TdFunction {
  const GetPaymentForm({
    required this.inputInvoice,
    this.theme,
  });

  /// [inputInvoice] The invoice
  final InputInvoice inputInvoice;

  /// [theme] Preferred payment form theme; pass null to use the default theme
  final ThemeParameters? theme;

  static const String constructor = 'getPaymentForm';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'input_invoice': inputInvoice.toJson(),
        'theme': theme?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetPaymentForm &&
          const DeepCollectionEquality()
              .equals(other.inputInvoice, inputInvoice) &&
          const DeepCollectionEquality().equals(other.theme, theme));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(inputInvoice),
        const DeepCollectionEquality().hash(theme)
      ]);
}
