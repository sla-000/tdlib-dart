// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Text that must be formatted as if inside a pre HTML tag
@immutable
class TextEntityTypePre extends TextEntityType {
  const TextEntityTypePre();

  static const String constructor = 'textEntityTypePre';

  static TextEntityTypePre? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypePre();
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
      (other.runtimeType == runtimeType && other is TextEntityTypePre);

  @override
  int get hashCode => runtimeType.hashCode;
}
