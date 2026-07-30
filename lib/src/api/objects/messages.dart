// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of messages
@immutable
class Messages extends TdObject {
  const Messages({
    required this.totalCount,
    this.messages,
  });

  /// [totalCount] Approximate total number of messages found
  final int totalCount;

  /// [messages] List of messages; messages may be null
  final List<Message>? messages;

  static const String constructor = 'messages';

  static Messages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Messages(
      totalCount: json['total_count'] as int,
      messages: List<Message>.from(
          ((json['messages'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Message.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'messages': messages?.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Messages &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount) &&
          const DeepCollectionEquality().equals(other.messages, messages));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(totalCount),
        const DeepCollectionEquality().hash(messages)
      ]);
}
