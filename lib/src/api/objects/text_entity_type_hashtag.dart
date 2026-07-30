// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A hashtag text, beginning with "#" and optionally containing a chat
/// username at the end
@immutable
class TextEntityTypeHashtag extends TextEntityType {
  const TextEntityTypeHashtag();

  static const String constructor = 'textEntityTypeHashtag';

  static TextEntityTypeHashtag? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeHashtag();
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
      (other.runtimeType == runtimeType && other is TextEntityTypeHashtag);

  @override
  int get hashCode => runtimeType.hashCode;
}
