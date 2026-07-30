// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The has_aggressive_anti_spam_enabled setting of a supergroup was toggled
@immutable
class ChatEventHasAggressiveAntiSpamEnabledToggled extends ChatEventAction {
  const ChatEventHasAggressiveAntiSpamEnabledToggled({
    required this.hasAggressiveAntiSpamEnabled,
  });

  /// [hasAggressiveAntiSpamEnabled] New value of
  /// has_aggressive_anti_spam_enabled
  final bool hasAggressiveAntiSpamEnabled;

  static const String constructor =
      'chatEventHasAggressiveAntiSpamEnabledToggled';

  static ChatEventHasAggressiveAntiSpamEnabledToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventHasAggressiveAntiSpamEnabledToggled(
      hasAggressiveAntiSpamEnabled:
          (json['has_aggressive_anti_spam_enabled'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'has_aggressive_anti_spam_enabled': hasAggressiveAntiSpamEnabled,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventHasAggressiveAntiSpamEnabledToggled &&
          const DeepCollectionEquality().equals(
              other.hasAggressiveAntiSpamEnabled,
              hasAggressiveAntiSpamEnabled));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(hasAggressiveAntiSpamEnabled)
      ]);
}
