// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to an invoice. Call getPaymentForm with the given
/// invoice name to process the link
@immutable
class InternalLinkTypeInvoice extends InternalLinkType {
  const InternalLinkTypeInvoice({
    required this.invoiceName,
  });

  /// [invoiceName] Name of the invoice
  final String invoiceName;

  static const String constructor = 'internalLinkTypeInvoice';

  static InternalLinkTypeInvoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeInvoice(
      invoiceName: json['invoice_name'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'invoice_name': invoiceName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypeInvoice &&
          const DeepCollectionEquality()
              .equals(other.invoiceName, invoiceName));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(invoiceName)]);
}
