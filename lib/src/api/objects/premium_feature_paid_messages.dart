import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
