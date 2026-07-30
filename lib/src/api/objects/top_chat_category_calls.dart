// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A category containing frequently used chats used for calls
@immutable
class TopChatCategoryCalls extends TopChatCategory {
  const TopChatCategoryCalls();

  static const String constructor = 'topChatCategoryCalls';

  static TopChatCategoryCalls? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryCalls();
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
      (other.runtimeType == runtimeType && other is TopChatCategoryCalls);

  @override
  int get hashCode => runtimeType.hashCode;
}
