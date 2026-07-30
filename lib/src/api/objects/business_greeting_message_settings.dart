// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes settings for greeting messages that are automatically sent by a
/// Telegram Business account as response to incoming messages in an inactive
/// private chat
@immutable
class BusinessGreetingMessageSettings extends TdObject {
  const BusinessGreetingMessageSettings({
    required this.shortcutId,
    required this.recipients,
    required this.inactivityDays,
  });

  /// [shortcutId] Unique quick reply shortcut identifier for the greeting
  /// messages
  final int shortcutId;

  /// [recipients] Chosen recipients of the greeting messages
  final BusinessRecipients recipients;

  /// [inactivityDays] The number of days after which a chat will be considered
  /// as inactive; currently, must be on of 7, 14, 21, or 28
  final int inactivityDays;

  static const String constructor = 'businessGreetingMessageSettings';

  static BusinessGreetingMessageSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessGreetingMessageSettings(
      shortcutId: json['shortcut_id'] as int,
      recipients: BusinessRecipients.fromJson(
          json['recipients'] as Map<String, dynamic>?)!,
      inactivityDays: json['inactivity_days'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'shortcut_id': shortcutId,
        'recipients': recipients.toJson(),
        'inactivity_days': inactivityDays,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BusinessGreetingMessageSettings &&
          const DeepCollectionEquality().equals(other.shortcutId, shortcutId) &&
          const DeepCollectionEquality().equals(other.recipients, recipients) &&
          const DeepCollectionEquality()
              .equals(other.inactivityDays, inactivityDays));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(shortcutId),
        const DeepCollectionEquality().hash(recipients),
        const DeepCollectionEquality().hash(inactivityDays)
      ]);
}
