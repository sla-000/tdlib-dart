import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A bank card number
@immutable
class RichTextBankCardNumber extends RichText {
  const RichTextBankCardNumber({
    required this.text,
    required this.bankCardNumber,
  });

  /// [text] Text
  final RichText text;

  /// [bankCardNumber] The number of the bank card
  final String bankCardNumber;

  static const String constructor = 'richTextBankCardNumber';

  static RichTextBankCardNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextBankCardNumber(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
      bankCardNumber: json['bank_card_number'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'bank_card_number': bankCardNumber,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
