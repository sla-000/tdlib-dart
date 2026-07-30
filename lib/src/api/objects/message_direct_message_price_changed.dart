// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A price for direct messages was changed in the channel chat
@immutable
class MessageDirectMessagePriceChanged extends MessageContent {
  const MessageDirectMessagePriceChanged({
    required this.isEnabled,
    required this.paidMessageStarCount,
  });

  /// [isEnabled] True, if direct messages group was enabled for the channel;
  /// false otherwise
  final bool isEnabled;

  /// [paidMessageStarCount] The new number of Telegram Stars that must be paid
  /// by non-administrator users of the channel chat for each message sent to
  /// the direct messages group; 0 if the direct messages group was disabled or
  /// the messages are free
  final int paidMessageStarCount;

  static const String constructor = 'messageDirectMessagePriceChanged';

  static MessageDirectMessagePriceChanged? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageDirectMessagePriceChanged(
      isEnabled: json['is_enabled'] as bool,
      paidMessageStarCount: json['paid_message_star_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_enabled': isEnabled,
        'paid_message_star_count': paidMessageStarCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageDirectMessagePriceChanged &&
          const DeepCollectionEquality().equals(other.isEnabled, isEnabled) &&
          const DeepCollectionEquality()
              .equals(other.paidMessageStarCount, paidMessageStarCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(isEnabled),
        const DeepCollectionEquality().hash(paidMessageStarCount)
      ]);
}
