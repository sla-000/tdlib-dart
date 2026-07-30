// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Searches a chat with an affiliate program. Returns the chat if found and
/// the program is active
/// Returns [Chat]
@immutable
class SearchChatAffiliateProgram extends TdFunction {
  const SearchChatAffiliateProgram({
    required this.username,
    required this.referrer,
  });

  /// [username] Username of the chat
  final String username;

  /// [referrer] The referrer from an internalLinkTypeChatAffiliateProgram link
  final String referrer;

  static const String constructor = 'searchChatAffiliateProgram';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'username': username,
        'referrer': referrer,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SearchChatAffiliateProgram &&
          const DeepCollectionEquality().equals(other.username, username) &&
          const DeepCollectionEquality().equals(other.referrer, referrer));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(username),
        const DeepCollectionEquality().hash(referrer)
      ]);
}
