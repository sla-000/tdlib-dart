// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The maximum number of added shareable chat folders
@immutable
class PremiumLimitTypeShareableChatFolderCount extends PremiumLimitType {
  const PremiumLimitTypeShareableChatFolderCount();

  static const String constructor = 'premiumLimitTypeShareableChatFolderCount';

  static PremiumLimitTypeShareableChatFolderCount? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeShareableChatFolderCount();
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
          other is PremiumLimitTypeShareableChatFolderCount);

  @override
  int get hashCode => runtimeType.hashCode;
}
