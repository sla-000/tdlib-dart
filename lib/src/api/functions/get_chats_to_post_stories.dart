// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns supergroup and channel chats in which the current user has the
/// right to post stories. The chats must be rechecked with canPostStory
/// before actually trying to post a story there
/// Returns [Chats]
@immutable
class GetChatsToPostStories extends TdFunction {
  const GetChatsToPostStories();

  static const String constructor = 'getChatsToPostStories';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetChatsToPostStories);

  @override
  int get hashCode => runtimeType.hashCode;
}
