// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message will be sent at the specified date
@immutable
class MessageSchedulingStateSendAtDate extends MessageSchedulingState {
  const MessageSchedulingStateSendAtDate({
    required this.sendDate,
    required this.repeatPeriod,
  });

  /// [sendDate] Point in time (Unix timestamp) when the message will be sent.
  /// The date must be within 367 days in the future
  final int sendDate;

  /// [repeatPeriod] Period after which the message will be sent again; in
  /// seconds; 0 if never; for Telegram Premium users only; may be non-zero only
  /// in sendMessage and forwardMessages with one message requests; must be one
  /// of 0, 86400, 7 * 86400, 14 * 86400, 30 * 86400, 91 * 86400, 182 * 86400,
  /// 365 * 86400, or additionally 60, or 300 in the Test DC
  final int repeatPeriod;

  static const String constructor = 'messageSchedulingStateSendAtDate';

  static MessageSchedulingStateSendAtDate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSchedulingStateSendAtDate(
      sendDate: json['send_date'] as int,
      repeatPeriod: json['repeat_period'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'send_date': sendDate,
        'repeat_period': repeatPeriod,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageSchedulingStateSendAtDate &&
          const DeepCollectionEquality().equals(other.sendDate, sendDate) &&
          const DeepCollectionEquality()
              .equals(other.repeatPeriod, repeatPeriod));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(sendDate),
        const DeepCollectionEquality().hash(repeatPeriod)
      ]);
}
