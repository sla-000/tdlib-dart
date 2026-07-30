import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The ability to enable content protection in private chats
@immutable
class PremiumFeatureProtectPrivateChatContent extends PremiumFeature {
  const PremiumFeatureProtectPrivateChatContent();

  static const String constructor = 'premiumFeatureProtectPrivateChatContent';

  static PremiumFeatureProtectPrivateChatContent? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureProtectPrivateChatContent();
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
