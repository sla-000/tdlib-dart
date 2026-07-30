// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to the Saved Messages chat. Call createPrivateChat with
/// getOption("my_id") and open the chat
@immutable
class InternalLinkTypeSavedMessages extends InternalLinkType {
  const InternalLinkTypeSavedMessages();

  static const String constructor = 'internalLinkTypeSavedMessages';

  static InternalLinkTypeSavedMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeSavedMessages();
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
          other is InternalLinkTypeSavedMessages);

  @override
  int get hashCode => runtimeType.hashCode;
}
