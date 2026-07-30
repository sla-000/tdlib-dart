// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A category containing frequently used basic groups and supergroups
@immutable
class TopChatCategoryGroups extends TopChatCategory {
  const TopChatCategoryGroups();

  static const String constructor = 'topChatCategoryGroups';

  static TopChatCategoryGroups? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryGroups();
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
      (other.runtimeType == runtimeType && other is TopChatCategoryGroups);

  @override
  int get hashCode => runtimeType.hashCode;
}
