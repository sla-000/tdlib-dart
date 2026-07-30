// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a user who added paid reactions
@immutable
class PaidReactor extends TdObject {
  const PaidReactor({
    this.senderId,
    required this.starCount,
    required this.isTop,
    required this.isMe,
    required this.isAnonymous,
  });

  /// [senderId] Identifier of the user or chat that added the reactions; may be
  /// null for anonymous reactors that aren't the current user
  final MessageSender? senderId;

  /// [starCount] Number of Telegram Stars added
  final int starCount;

  /// [isTop] True, if the reactor is one of the most active reactors; may be
  /// false if the reactor is the current user
  final bool isTop;

  /// [isMe] True, if the paid reaction was added by the current user
  final bool isMe;

  /// [isAnonymous] True, if the reactor is anonymous
  final bool isAnonymous;

  static const String constructor = 'paidReactor';

  static PaidReactor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaidReactor(
      senderId:
          MessageSender.fromJson(json['sender_id'] as Map<String, dynamic>?),
      starCount: (json['star_count'] as int?) ?? 0,
      isTop: (json['is_top'] as bool?) ?? false,
      isMe: (json['is_me'] as bool?) ?? false,
      isAnonymous: (json['is_anonymous'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sender_id': senderId?.toJson(),
        'star_count': starCount,
        'is_top': isTop,
        'is_me': isMe,
        'is_anonymous': isAnonymous,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PaidReactor &&
          const DeepCollectionEquality().equals(other.senderId, senderId) &&
          const DeepCollectionEquality().equals(other.starCount, starCount) &&
          const DeepCollectionEquality().equals(other.isTop, isTop) &&
          const DeepCollectionEquality().equals(other.isMe, isMe) &&
          const DeepCollectionEquality()
              .equals(other.isAnonymous, isAnonymous));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(senderId),
        const DeepCollectionEquality().hash(starCount),
        const DeepCollectionEquality().hash(isTop),
        const DeepCollectionEquality().hash(isMe),
        const DeepCollectionEquality().hash(isAnonymous)
      ]);
}
