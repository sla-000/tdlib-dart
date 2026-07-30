// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a list of basic group and supergroup chats, which can be used as a
/// discussion group for a channel. Returned basic group chats must be first
/// upgraded to supergroups before they can be set as a discussion group. To
/// set a returned supergroup as a discussion group, access to its old
/// messages must be enabled using toggleSupergroupIsAllHistoryAvailable first
/// Returns [Chats]
@immutable
class GetSuitableDiscussionChats extends TdFunction {
  const GetSuitableDiscussionChats();

  static const String constructor = 'getSuitableDiscussionChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetSuitableDiscussionChats);

  @override
  int get hashCode => runtimeType.hashCode;
}
