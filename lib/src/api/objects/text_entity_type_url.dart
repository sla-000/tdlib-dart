// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An HTTP URL
@immutable
class TextEntityTypeUrl extends TextEntityType {
  const TextEntityTypeUrl();

  static const String constructor = 'textEntityTypeUrl';

  static TextEntityTypeUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeUrl();
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
      (other.runtimeType == runtimeType && other is TextEntityTypeUrl);

  @override
  int get hashCode => runtimeType.hashCode;
}
