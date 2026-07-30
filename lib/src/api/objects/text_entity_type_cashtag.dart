// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A cashtag text, beginning with "$", consisting of capital English letters
/// (e.g., "$USD"), and optionally containing a chat username at the end
@immutable
class TextEntityTypeCashtag extends TextEntityType {
  const TextEntityTypeCashtag();

  static const String constructor = 'textEntityTypeCashtag';

  static TextEntityTypeCashtag? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeCashtag();
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
      (other.runtimeType == runtimeType && other is TextEntityTypeCashtag);

  @override
  int get hashCode => runtimeType.hashCode;
}
