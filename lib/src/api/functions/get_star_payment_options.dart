// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns available options for Telegram Stars purchase
/// Returns [StarPaymentOptions]
@immutable
class GetStarPaymentOptions extends TdFunction {
  const GetStarPaymentOptions();

  static const String constructor = 'getStarPaymentOptions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetStarPaymentOptions);

  @override
  int get hashCode => runtimeType.hashCode;
}
