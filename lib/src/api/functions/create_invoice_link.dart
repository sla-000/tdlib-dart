// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Creates a link for the given invoice; for bots only
/// Returns [HttpUrl]
@immutable
class CreateInvoiceLink extends TdFunction {
  const CreateInvoiceLink({
    required this.businessConnectionId,
    required this.invoice,
  });

  /// [businessConnectionId] Unique identifier of business connection on behalf
  /// of which to send the request
  final String businessConnectionId;

  /// [invoice] Information about the invoice of the type inputMessageInvoice
  final InputMessageContent invoice;

  static const String constructor = 'createInvoiceLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'business_connection_id': businessConnectionId,
        'invoice': invoice.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CreateInvoiceLink &&
          const DeepCollectionEquality()
              .equals(other.businessConnectionId, businessConnectionId) &&
          const DeepCollectionEquality().equals(other.invoice, invoice));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(businessConnectionId),
        const DeepCollectionEquality().hash(invoice)
      ]);
}
