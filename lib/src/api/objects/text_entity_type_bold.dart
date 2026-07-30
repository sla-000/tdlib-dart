// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A bold text
@immutable
class TextEntityTypeBold extends TextEntityType {
  const TextEntityTypeBold();

  static const String constructor = 'textEntityTypeBold';

  static TextEntityTypeBold? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeBold();
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
      (other.runtimeType == runtimeType && other is TextEntityTypeBold);

  @override
  int get hashCode => runtimeType.hashCode;
}
