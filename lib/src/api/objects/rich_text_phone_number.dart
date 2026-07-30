// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A rich text phone number
@immutable
class RichTextPhoneNumber extends RichText {
  const RichTextPhoneNumber({
    required this.text,
    required this.phoneNumber,
  });

  /// [text] Text
  final RichText text;

  /// [phoneNumber] Phone number
  final String phoneNumber;

  static const String constructor = 'richTextPhoneNumber';

  static RichTextPhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextPhoneNumber(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
      phoneNumber: json['phone_number'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'phone_number': phoneNumber,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RichTextPhoneNumber &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality()
              .equals(other.phoneNumber, phoneNumber));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(phoneNumber)
      ]);
}
