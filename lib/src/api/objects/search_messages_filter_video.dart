// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns only video messages
@immutable
class SearchMessagesFilterVideo extends SearchMessagesFilter {
  const SearchMessagesFilterVideo();

  static const String constructor = 'searchMessagesFilterVideo';

  static SearchMessagesFilterVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterVideo();
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
      (other.runtimeType == runtimeType && other is SearchMessagesFilterVideo);

  @override
  int get hashCode => runtimeType.hashCode;
}
