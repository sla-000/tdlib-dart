// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Text that must be formatted as if inside a code HTML tag
@immutable
class TextEntityTypeCode extends TextEntityType {
  const TextEntityTypeCode();

  static const String constructor = 'textEntityTypeCode';

  static TextEntityTypeCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeCode();
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
      (other.runtimeType == runtimeType && other is TextEntityTypeCode);

  @override
  int get hashCode => runtimeType.hashCode;
}
