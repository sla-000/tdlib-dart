// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A strikethrough text
@immutable
class TextEntityTypeStrikethrough extends TextEntityType {
  const TextEntityTypeStrikethrough();

  static const String constructor = 'textEntityTypeStrikethrough';

  static TextEntityTypeStrikethrough? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeStrikethrough();
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
      (other.runtimeType == runtimeType &&
          other is TextEntityTypeStrikethrough);

  @override
  int get hashCode => runtimeType.hashCode;
}
