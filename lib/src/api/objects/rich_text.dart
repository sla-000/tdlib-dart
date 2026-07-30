// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a formatted text object
@immutable
abstract class RichText extends TdObject {
  const RichText();

  static const String constructor = 'richText';

  /// Inherited by:
  /// [RichTextAnchorLink]
  /// [RichTextAnchor]
  /// [RichTextBankCardNumber]
  /// [RichTextBold]
  /// [RichTextBotCommand]
  /// [RichTextCashtag]
  /// [RichTextCustomEmoji]
  /// [RichTextDateTime]
  /// [RichTextDiff]
  /// [RichTextEmailAddress]
  /// [RichTextFixed]
  /// [RichTextHashtag]
  /// [RichTextIcon]
  /// [RichTextItalic]
  /// [RichTextMarked]
  /// [RichTextMathematicalExpression]
  /// [RichTextMentionName]
  /// [RichTextMention]
  /// [RichTextPhoneNumber]
  /// [RichTextPlain]
  /// [RichTextReferenceLink]
  /// [RichTextReference]
  /// [RichTextSpoiler]
  /// [RichTextStrikethrough]
  /// [RichTextSubscript]
  /// [RichTextSuperscript]
  /// [RichTextUnderline]
  /// [RichTextUrl]
  /// [RichTexts]
  static RichText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case RichTextAnchor.constructor:
        return RichTextAnchor.fromJson(json);
      case RichTextAnchorLink.constructor:
        return RichTextAnchorLink.fromJson(json);
      case RichTextBankCardNumber.constructor:
        return RichTextBankCardNumber.fromJson(json);
      case RichTextBold.constructor:
        return RichTextBold.fromJson(json);
      case RichTextBotCommand.constructor:
        return RichTextBotCommand.fromJson(json);
      case RichTextCashtag.constructor:
        return RichTextCashtag.fromJson(json);
      case RichTextCustomEmoji.constructor:
        return RichTextCustomEmoji.fromJson(json);
      case RichTextDateTime.constructor:
        return RichTextDateTime.fromJson(json);
      case RichTextDiff.constructor:
        return RichTextDiff.fromJson(json);
      case RichTextEmailAddress.constructor:
        return RichTextEmailAddress.fromJson(json);
      case RichTextFixed.constructor:
        return RichTextFixed.fromJson(json);
      case RichTextHashtag.constructor:
        return RichTextHashtag.fromJson(json);
      case RichTextIcon.constructor:
        return RichTextIcon.fromJson(json);
      case RichTextItalic.constructor:
        return RichTextItalic.fromJson(json);
      case RichTextMarked.constructor:
        return RichTextMarked.fromJson(json);
      case RichTextMathematicalExpression.constructor:
        return RichTextMathematicalExpression.fromJson(json);
      case RichTextMention.constructor:
        return RichTextMention.fromJson(json);
      case RichTextMentionName.constructor:
        return RichTextMentionName.fromJson(json);
      case RichTextPhoneNumber.constructor:
        return RichTextPhoneNumber.fromJson(json);
      case RichTextPlain.constructor:
        return RichTextPlain.fromJson(json);
      case RichTextReference.constructor:
        return RichTextReference.fromJson(json);
      case RichTextReferenceLink.constructor:
        return RichTextReferenceLink.fromJson(json);
      case RichTextSpoiler.constructor:
        return RichTextSpoiler.fromJson(json);
      case RichTextStrikethrough.constructor:
        return RichTextStrikethrough.fromJson(json);
      case RichTextSubscript.constructor:
        return RichTextSubscript.fromJson(json);
      case RichTextSuperscript.constructor:
        return RichTextSuperscript.fromJson(json);
      case RichTextUnderline.constructor:
        return RichTextUnderline.fromJson(json);
      case RichTextUrl.constructor:
        return RichTextUrl.fromJson(json);
      case RichTexts.constructor:
        return RichTexts.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is RichText);

  @override
  int get hashCode => runtimeType.hashCode;
}
