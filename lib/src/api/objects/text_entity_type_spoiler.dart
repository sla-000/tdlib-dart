// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A spoiler text
@immutable
class TextEntityTypeSpoiler extends TextEntityType {
  const TextEntityTypeSpoiler();

  static const String constructor = 'textEntityTypeSpoiler';

  static TextEntityTypeSpoiler? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeSpoiler();
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
      (other.runtimeType == runtimeType && other is TextEntityTypeSpoiler);

  @override
  int get hashCode => runtimeType.hashCode;
}
