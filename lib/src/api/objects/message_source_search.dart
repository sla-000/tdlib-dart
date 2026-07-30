// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message is from search results, including file downloads, local file
/// list, outgoing document messages, calendar
@immutable
class MessageSourceSearch extends MessageSource {
  const MessageSourceSearch();

  static const String constructor = 'messageSourceSearch';

  static MessageSourceSearch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSourceSearch();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is MessageSourceSearch);

  @override
  int get hashCode => runtimeType.hashCode;
}
