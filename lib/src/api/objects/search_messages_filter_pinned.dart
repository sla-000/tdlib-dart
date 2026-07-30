// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns only pinned messages
@immutable
class SearchMessagesFilterPinned extends SearchMessagesFilter {
  const SearchMessagesFilterPinned();

  static const String constructor = 'searchMessagesFilterPinned';

  static SearchMessagesFilterPinned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterPinned();
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
      (other.runtimeType == runtimeType && other is SearchMessagesFilterPinned);

  @override
  int get hashCode => runtimeType.hashCode;
}
