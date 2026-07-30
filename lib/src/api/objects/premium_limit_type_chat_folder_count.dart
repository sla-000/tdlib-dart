// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The maximum number of chat folders
@immutable
class PremiumLimitTypeChatFolderCount extends PremiumLimitType {
  const PremiumLimitTypeChatFolderCount();

  static const String constructor = 'premiumLimitTypeChatFolderCount';

  static PremiumLimitTypeChatFolderCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeChatFolderCount();
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
          other is PremiumLimitTypeChatFolderCount);

  @override
  int get hashCode => runtimeType.hashCode;
}
