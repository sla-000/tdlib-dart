// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The text uses HTML-style formatting. The same as Telegram Bot API "HTML"
/// parse mode
@immutable
class TextParseModeHTML extends TextParseMode {
  const TextParseModeHTML();

  static const String constructor = 'textParseModeHTML';

  static TextParseModeHTML? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextParseModeHTML();
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
      (other.runtimeType == runtimeType && other is TextParseModeHTML);

  @override
  int get hashCode => runtimeType.hashCode;
}
