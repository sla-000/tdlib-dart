// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a boost applied to a chat
@immutable
class ChatBoost extends TdObject {
  const ChatBoost({
    required this.id,
    required this.count,
    required this.source,
    required this.startDate,
    required this.expirationDate,
  });

  /// [id] Unique identifier of the boost
  final String id;

  /// [count] The number of identical boosts applied
  final int count;

  /// [source] Source of the boost
  final ChatBoostSource source;

  /// [startDate] Point in time (Unix timestamp) when the chat was boosted
  final int startDate;

  /// [expirationDate] Point in time (Unix timestamp) when the boost will expire
  final int expirationDate;

  static const String constructor = 'chatBoost';

  static ChatBoost? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBoost(
      id: json['id'] as String,
      count: json['count'] as int,
      source:
          ChatBoostSource.fromJson(json['source'] as Map<String, dynamic>?)!,
      startDate: json['start_date'] as int,
      expirationDate: json['expiration_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'count': count,
        'source': source.toJson(),
        'start_date': startDate,
        'expiration_date': expirationDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatBoost &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.count, count) &&
          const DeepCollectionEquality().equals(other.source, source) &&
          const DeepCollectionEquality().equals(other.startDate, startDate) &&
          const DeepCollectionEquality()
              .equals(other.expirationDate, expirationDate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(count),
        const DeepCollectionEquality().hash(source),
        const DeepCollectionEquality().hash(startDate),
        const DeepCollectionEquality().hash(expirationDate)
      ]);
}
