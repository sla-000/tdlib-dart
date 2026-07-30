// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Informs TDLib that the user clicked Premium subscription button on the
/// Premium features screen
/// Returns [Ok]
@immutable
class ClickPremiumSubscriptionButton extends TdFunction {
  const ClickPremiumSubscriptionButton();

  static const String constructor = 'clickPremiumSubscriptionButton';

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
          other is ClickPremiumSubscriptionButton);

  @override
  int get hashCode => runtimeType.hashCode;
}
