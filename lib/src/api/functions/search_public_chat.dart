// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Searches a public chat by its username. Currently, only private chats,
/// supergroups and channels can be public. Returns the chat if found;
/// otherwise, an error is returned
/// Returns [Chat]
@immutable
class SearchPublicChat extends TdFunction {
  const SearchPublicChat({
    required this.username,
  });

  /// [username] Username to be resolved
  final String username;

  static const String constructor = 'searchPublicChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'username': username,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SearchPublicChat &&
          const DeepCollectionEquality().equals(other.username, username));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(username)]);
}
