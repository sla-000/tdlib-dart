// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains the storage usage statistics for a specific chat
@immutable
class StorageStatisticsByChat extends TdObject {
  const StorageStatisticsByChat({
    required this.chatId,
    required this.size,
    required this.count,
    required this.byFileType,
  });

  /// [chatId] Chat identifier; 0 if none
  final int chatId;

  /// [size] Total size of the files in the chat, in bytes
  final int size;

  /// [count] Total number of files in the chat
  final int count;

  /// [byFileType] Statistics split by file types
  final List<StorageStatisticsByFileType> byFileType;

  static const String constructor = 'storageStatisticsByChat';

  static StorageStatisticsByChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorageStatisticsByChat(
      chatId: (json['chat_id'] as int?) ?? 0,
      size: (json['size'] as int?) ?? 0,
      count: (json['count'] as int?) ?? 0,
      byFileType: List<StorageStatisticsByFileType>.from(
          ((json['by_file_type'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => StorageStatisticsByFileType.fromJson(
                  item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'size': size,
        'count': count,
        'by_file_type': byFileType.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StorageStatisticsByChat &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.size, size) &&
          const DeepCollectionEquality().equals(other.count, count) &&
          const DeepCollectionEquality().equals(other.byFileType, byFileType));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(size),
        const DeepCollectionEquality().hash(count),
        const DeepCollectionEquality().hash(byFileType)
      ]);
}
