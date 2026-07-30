// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A cashtag
@immutable
class RichTextCashtag extends RichText {
  const RichTextCashtag({
    required this.text,
    required this.cashtag,
  });

  /// [text] Text
  final RichText text;

  /// [cashtag] The cashtag
  final String cashtag;

  static const String constructor = 'richTextCashtag';

  static RichTextCashtag? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextCashtag(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
      cashtag: (json['cashtag'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'cashtag': cashtag,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RichTextCashtag &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.cashtag, cashtag));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(cashtag)
      ]);
}
