// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Checks whether an in-store purchase is possible. Must be called before any
/// in-store purchase. For official applications only
/// Returns [Ok]
@immutable
class CanPurchaseFromStore extends TdFunction {
  const CanPurchaseFromStore({
    required this.purpose,
  });

  /// [purpose] Transaction purpose
  final StorePaymentPurpose purpose;

  static const String constructor = 'canPurchaseFromStore';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'purpose': purpose.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CanPurchaseFromStore &&
          const DeepCollectionEquality().equals(other.purpose, purpose));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(purpose)]);
}
