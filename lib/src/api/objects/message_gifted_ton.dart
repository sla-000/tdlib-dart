// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Toncoins were gifted to a user
@immutable
class MessageGiftedTon extends MessageContent {
  const MessageGiftedTon({
    required this.gifterUserId,
    required this.receiverUserId,
    required this.tonAmount,
    required this.transactionId,
    this.sticker,
  });

  /// [gifterUserId] The identifier of a user who gifted Toncoins; 0 if the gift
  /// was anonymous or is outgoing
  final int gifterUserId;

  /// [receiverUserId] The identifier of a user who received Toncoins; 0 if the
  /// gift is incoming
  final int receiverUserId;

  /// [tonAmount] The received Toncoin amount, in the smallest units of the
  /// cryptocurrency
  final int tonAmount;

  /// [transactionId] Identifier of the transaction for Toncoin credit; for
  /// receiver only
  final String transactionId;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;

  static const String constructor = 'messageGiftedTon';

  static MessageGiftedTon? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGiftedTon(
      gifterUserId: (json['gifter_user_id'] as int?) ?? 0,
      receiverUserId: (json['receiver_user_id'] as int?) ?? 0,
      tonAmount: (json['ton_amount'] as int?) ?? 0,
      transactionId: (json['transaction_id'] as String?) ?? '',
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gifter_user_id': gifterUserId,
        'receiver_user_id': receiverUserId,
        'ton_amount': tonAmount,
        'transaction_id': transactionId,
        'sticker': sticker?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageGiftedTon &&
          const DeepCollectionEquality()
              .equals(other.gifterUserId, gifterUserId) &&
          const DeepCollectionEquality()
              .equals(other.receiverUserId, receiverUserId) &&
          const DeepCollectionEquality().equals(other.tonAmount, tonAmount) &&
          const DeepCollectionEquality()
              .equals(other.transactionId, transactionId) &&
          const DeepCollectionEquality().equals(other.sticker, sticker));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(gifterUserId),
        const DeepCollectionEquality().hash(receiverUserId),
        const DeepCollectionEquality().hash(tonAmount),
        const DeepCollectionEquality().hash(transactionId),
        const DeepCollectionEquality().hash(sticker)
      ]);
}
