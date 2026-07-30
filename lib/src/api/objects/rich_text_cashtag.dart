import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      cashtag: json['cashtag'] as String,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
