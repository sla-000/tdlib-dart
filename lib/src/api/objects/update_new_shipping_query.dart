// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A new incoming shipping query; for bots only. Only for invoices with
/// flexible price
@immutable
class UpdateNewShippingQuery extends Update {
  const UpdateNewShippingQuery({
    required this.id,
    required this.senderUserId,
    required this.invoicePayload,
    required this.shippingAddress,
  });

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [invoicePayload] Invoice payload
  final String invoicePayload;

  /// [shippingAddress] User shipping address
  final Address shippingAddress;

  static const String constructor = 'updateNewShippingQuery';

  static UpdateNewShippingQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewShippingQuery(
      id: (json['id'] is int
              ? json['id'] as int
              : int.tryParse(json['id']?.toString() ?? '')) ??
          0,
      senderUserId: (json['sender_user_id'] as int?) ?? 0,
      invoicePayload: (json['invoice_payload'] as String?) ?? '',
      shippingAddress:
          Address.fromJson(json['shipping_address'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'sender_user_id': senderUserId,
        'invoice_payload': invoicePayload,
        'shipping_address': shippingAddress.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateNewShippingQuery &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality()
              .equals(other.senderUserId, senderUserId) &&
          const DeepCollectionEquality()
              .equals(other.invoicePayload, invoicePayload) &&
          const DeepCollectionEquality()
              .equals(other.shippingAddress, shippingAddress));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(senderUserId),
        const DeepCollectionEquality().hash(invoicePayload),
        const DeepCollectionEquality().hash(shippingAddress)
      ]);
}
