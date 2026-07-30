// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns all entities (mentions, hashtags, cashtags, bot commands, bank
/// card numbers, URLs, and email addresses) found in the text. Can be called
/// synchronously
/// Returns [TextEntities]
@immutable
class GetTextEntities extends TdFunction {
  const GetTextEntities({
    required this.text,
  });

  /// [text] The text in which to look for entities
  final String text;

  static const String constructor = 'getTextEntities';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetTextEntities &&
          const DeepCollectionEquality().equals(other.text, text));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(text)]);
}
