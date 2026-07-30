// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The ability to require a payment for incoming messages in new chats
@immutable
class PremiumFeaturePaidMessages extends PremiumFeature {
  const PremiumFeaturePaidMessages();

  static const String constructor = 'premiumFeaturePaidMessages';

  static PremiumFeaturePaidMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeaturePaidMessages();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is PremiumFeaturePaidMessages);

  @override
  int get hashCode => runtimeType.hashCode;
}
