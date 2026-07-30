// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat available reactions were changed
@immutable
class ChatEventAvailableReactionsChanged extends ChatEventAction {
  const ChatEventAvailableReactionsChanged({
    required this.oldAvailableReactions,
    required this.newAvailableReactions,
  });

  /// [oldAvailableReactions] Previous chat available reactions
  final ChatAvailableReactions oldAvailableReactions;

  /// [newAvailableReactions] New chat available reactions
  final ChatAvailableReactions newAvailableReactions;

  static const String constructor = 'chatEventAvailableReactionsChanged';

  static ChatEventAvailableReactionsChanged? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventAvailableReactionsChanged(
      oldAvailableReactions: ChatAvailableReactions.fromJson(
          json['old_available_reactions'] as Map<String, dynamic>?)!,
      newAvailableReactions: ChatAvailableReactions.fromJson(
          json['new_available_reactions'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_available_reactions': oldAvailableReactions.toJson(),
        'new_available_reactions': newAvailableReactions.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventAvailableReactionsChanged &&
          const DeepCollectionEquality()
              .equals(other.oldAvailableReactions, oldAvailableReactions) &&
          const DeepCollectionEquality()
              .equals(other.newAvailableReactions, newAvailableReactions));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(oldAvailableReactions),
        const DeepCollectionEquality().hash(newAvailableReactions)
      ]);
}
