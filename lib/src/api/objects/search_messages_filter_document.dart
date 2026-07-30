// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns only document messages
@immutable
class SearchMessagesFilterDocument extends SearchMessagesFilter {
  const SearchMessagesFilterDocument();

  static const String constructor = 'searchMessagesFilterDocument';

  static SearchMessagesFilterDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterDocument();
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
      (other.runtimeType == runtimeType &&
          other is SearchMessagesFilterDocument);

  @override
  int get hashCode => runtimeType.hashCode;
}
