// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A rich text email address
@immutable
class RichTextEmailAddress extends RichText {
  const RichTextEmailAddress({
    required this.text,
    required this.emailAddress,
  });

  /// [text] Text
  final RichText text;

  /// [emailAddress] Email address
  final String emailAddress;

  static const String constructor = 'richTextEmailAddress';

  static RichTextEmailAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextEmailAddress(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
      emailAddress: (json['email_address'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'email_address': emailAddress,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RichTextEmailAddress &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality()
              .equals(other.emailAddress, emailAddress));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(emailAddress)
      ]);
}
