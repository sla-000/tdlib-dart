// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The payment form is for a payment in Telegram Stars
@immutable
class PaymentFormTypeStars extends PaymentFormType {
  const PaymentFormTypeStars({
    required this.starCount,
  });

  /// [starCount] Number of Telegram Stars that will be paid
  final int starCount;

  static const String constructor = 'paymentFormTypeStars';

  static PaymentFormTypeStars? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentFormTypeStars(
      starCount: (json['star_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PaymentFormTypeStars &&
          const DeepCollectionEquality().equals(other.starCount, starCount));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(starCount)]);
}
