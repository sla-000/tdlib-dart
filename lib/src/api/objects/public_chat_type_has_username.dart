// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat is public, because it has an active username
@immutable
class PublicChatTypeHasUsername extends PublicChatType {
  const PublicChatTypeHasUsername();

  static const String constructor = 'publicChatTypeHasUsername';

  static PublicChatTypeHasUsername? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PublicChatTypeHasUsername();
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
      (other.runtimeType == runtimeType && other is PublicChatTypeHasUsername);

  @override
  int get hashCode => runtimeType.hashCode;
}
