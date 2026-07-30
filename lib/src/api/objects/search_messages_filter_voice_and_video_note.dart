// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns only voice and video note messages
@immutable
class SearchMessagesFilterVoiceAndVideoNote extends SearchMessagesFilter {
  const SearchMessagesFilterVoiceAndVideoNote();

  static const String constructor = 'searchMessagesFilterVoiceAndVideoNote';

  static SearchMessagesFilterVoiceAndVideoNote? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterVoiceAndVideoNote();
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
          other is SearchMessagesFilterVoiceAndVideoNote);

  @override
  int get hashCode => runtimeType.hashCode;
}
