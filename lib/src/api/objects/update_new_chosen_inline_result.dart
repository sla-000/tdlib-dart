// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user has chosen a result of an inline query; for bots only
@immutable
class UpdateNewChosenInlineResult extends Update {
  const UpdateNewChosenInlineResult({
    required this.senderUserId,
    this.userLocation,
    required this.query,
    required this.resultId,
    required this.inlineMessageId,
  });

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [userLocation] User location; may be null
  final Location? userLocation;

  /// [query] Text of the query
  final String query;

  /// [resultId] Identifier of the chosen result
  final String resultId;

  /// [inlineMessageId] Identifier of the sent inline message, if known
  final String inlineMessageId;

  static const String constructor = 'updateNewChosenInlineResult';

  static UpdateNewChosenInlineResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewChosenInlineResult(
      senderUserId: json['sender_user_id'] as int,
      userLocation:
          Location.fromJson(json['user_location'] as Map<String, dynamic>?),
      query: json['query'] as String,
      resultId: json['result_id'] as String,
      inlineMessageId: json['inline_message_id'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sender_user_id': senderUserId,
        'user_location': userLocation?.toJson(),
        'query': query,
        'result_id': resultId,
        'inline_message_id': inlineMessageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateNewChosenInlineResult &&
          const DeepCollectionEquality()
              .equals(other.senderUserId, senderUserId) &&
          const DeepCollectionEquality()
              .equals(other.userLocation, userLocation) &&
          const DeepCollectionEquality().equals(other.query, query) &&
          const DeepCollectionEquality().equals(other.resultId, resultId) &&
          const DeepCollectionEquality()
              .equals(other.inlineMessageId, inlineMessageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(senderUserId),
        const DeepCollectionEquality().hash(userLocation),
        const DeepCollectionEquality().hash(query),
        const DeepCollectionEquality().hash(resultId),
        const DeepCollectionEquality().hash(inlineMessageId)
      ]);
}
