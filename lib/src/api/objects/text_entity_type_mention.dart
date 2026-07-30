// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A mention of a user, a supergroup, or a channel by their username
@immutable
class TextEntityTypeMention extends TextEntityType {
  const TextEntityTypeMention();

  static const String constructor = 'textEntityTypeMention';

  static TextEntityTypeMention? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeMention();
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
      (other.runtimeType == runtimeType && other is TextEntityTypeMention);

  @override
  int get hashCode => runtimeType.hashCode;
}
