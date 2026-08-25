// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An expandable block quote
@immutable
class InputPageBlockExpandableBlockQuote extends InputPageBlock {
  const InputPageBlockExpandableBlockQuote({
    required this.text,
    this.credit,
  });

  /// [text] Quote text
  final RichText text;

  /// [credit] Quote credit; pass null if none
  final RichText? credit;

  static const String constructor = 'inputPageBlockExpandableBlockQuote';

  static InputPageBlockExpandableBlockQuote? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockExpandableBlockQuote(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
      credit: RichText.fromJson(json['credit'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'credit': credit?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPageBlockExpandableBlockQuote &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.credit, credit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(credit)
      ]);
}
