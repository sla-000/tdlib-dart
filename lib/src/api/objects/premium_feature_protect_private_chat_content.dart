// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PremiumFeatureProtectPrivateChatContent);

  @override
  int get hashCode => runtimeType.hashCode;
}
