// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A block quote
@immutable
class PageBlockBlockQuote extends PageBlock {
  const PageBlockBlockQuote({
    required this.text,
    required this.credit,
  });

  /// [text] Quote text
  final RichText text;

  /// [credit] Quote credit
  final RichText credit;

  static const String constructor = 'pageBlockBlockQuote';

  static PageBlockBlockQuote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockBlockQuote(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
      credit: RichText.fromJson(json['credit'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'credit': credit.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockBlockQuote &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.credit, credit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(credit)
      ]);
}
