// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link that allows to select some chats
@immutable
class InternalLinkTypeChatSelection extends InternalLinkType {
  const InternalLinkTypeChatSelection();

  static const String constructor = 'internalLinkTypeChatSelection';

  static InternalLinkTypeChatSelection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeChatSelection();
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
          other is InternalLinkTypeChatSelection);

  @override
  int get hashCode => runtimeType.hashCode;
}
