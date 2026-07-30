// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The affiliate is a channel chat where the current user has
/// can_post_messages administrator right
@immutable
class AffiliateTypeChannel extends AffiliateType {
  const AffiliateTypeChannel({
    required this.chatId,
  });

  /// [chatId] Identifier of the channel chat
  final int chatId;

  static const String constructor = 'affiliateTypeChannel';

  static AffiliateTypeChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AffiliateTypeChannel(
      chatId: (json['chat_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AffiliateTypeChannel &&
          const DeepCollectionEquality().equals(other.chatId, chatId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(chatId)]);
}
