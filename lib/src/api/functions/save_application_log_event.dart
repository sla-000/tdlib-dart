// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Saves application log event on the server. Can be called before
/// authorization
/// Returns [Ok]
@immutable
class SaveApplicationLogEvent extends TdFunction {
  const SaveApplicationLogEvent({
    required this.type,
    this.chatId,
    required this.data,
  });

  /// [type] Event type
  final String type;

  /// [chatId] Optional chat identifier, associated with the event
  final int? chatId;

  /// [data] The log event data
  final JsonValue data;

  static const String constructor = 'saveApplicationLogEvent';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type,
        'chat_id': chatId,
        'data': data.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SaveApplicationLogEvent &&
          const DeepCollectionEquality().equals(other.type, type) &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.data, data));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(data)
      ]);
}
