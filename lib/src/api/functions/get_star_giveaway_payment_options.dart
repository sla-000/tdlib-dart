// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns available options for Telegram Star giveaway creation
/// Returns [StarGiveawayPaymentOptions]
@immutable
class GetStarGiveawayPaymentOptions extends TdFunction {
  const GetStarGiveawayPaymentOptions();

  static const String constructor = 'getStarGiveawayPaymentOptions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetStarGiveawayPaymentOptions);

  @override
  int get hashCode => runtimeType.hashCode;
}
