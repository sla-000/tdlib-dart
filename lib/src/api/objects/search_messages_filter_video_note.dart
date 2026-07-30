// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns only video note messages
@immutable
class SearchMessagesFilterVideoNote extends SearchMessagesFilter {
  const SearchMessagesFilterVideoNote();

  static const String constructor = 'searchMessagesFilterVideoNote';

  static SearchMessagesFilterVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterVideoNote();
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
          other is SearchMessagesFilterVideoNote);

  @override
  int get hashCode => runtimeType.hashCode;
}
