// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes an invoice to process
@immutable
abstract class InputInvoice extends TdObject {
  const InputInvoice();

  static const String constructor = 'inputInvoice';

  /// Inherited by:
  /// [InputInvoiceMessage]
  /// [InputInvoiceName]
  /// [InputInvoiceTelegram]
  static InputInvoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputInvoiceMessage.constructor:
        return InputInvoiceMessage.fromJson(json);
      case InputInvoiceName.constructor:
        return InputInvoiceName.fromJson(json);
      case InputInvoiceTelegram.constructor:
        return InputInvoiceTelegram.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is InputInvoice);

  @override
  int get hashCode => runtimeType.hashCode;
}
