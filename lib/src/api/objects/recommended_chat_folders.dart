// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of recommended chat folders
@immutable
class RecommendedChatFolders extends TdObject {
  const RecommendedChatFolders({
    required this.chatFolders,
  });

  /// [chatFolders] List of recommended chat folders
  final List<RecommendedChatFolder> chatFolders;

  static const String constructor = 'recommendedChatFolders';

  static RecommendedChatFolders? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RecommendedChatFolders(
      chatFolders: List<RecommendedChatFolder>.from(
          ((json['chat_folders'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  RecommendedChatFolder.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_folders': chatFolders.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RecommendedChatFolders &&
          const DeepCollectionEquality()
              .equals(other.chatFolders, chatFolders));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(chatFolders)]);
}
