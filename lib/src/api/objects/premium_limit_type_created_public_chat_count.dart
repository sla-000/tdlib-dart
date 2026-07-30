// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The maximum number of created public chats
@immutable
class PremiumLimitTypeCreatedPublicChatCount extends PremiumLimitType {
  const PremiumLimitTypeCreatedPublicChatCount();

  static const String constructor = 'premiumLimitTypeCreatedPublicChatCount';

  static PremiumLimitTypeCreatedPublicChatCount? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeCreatedPublicChatCount();
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
          other is PremiumLimitTypeCreatedPublicChatCount);

  @override
  int get hashCode => runtimeType.hashCode;
}
