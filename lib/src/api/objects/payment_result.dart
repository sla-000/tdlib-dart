// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains the result of a payment request
@immutable
class PaymentResult extends TdObject {
  const PaymentResult({
    required this.success,
    required this.verificationUrl,
  });

  /// [success] True, if the payment request was successful; otherwise, the
  /// verification_url will be non-empty
  final bool success;

  /// [verificationUrl] URL for additional payment credentials verification
  final String verificationUrl;

  static const String constructor = 'paymentResult';

  static PaymentResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentResult(
      success: json['success'] as bool,
      verificationUrl: json['verification_url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'success': success,
        'verification_url': verificationUrl,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PaymentResult &&
          const DeepCollectionEquality().equals(other.success, success) &&
          const DeepCollectionEquality()
              .equals(other.verificationUrl, verificationUrl));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(success),
        const DeepCollectionEquality().hash(verificationUrl)
      ]);
}
