// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A phone number
@immutable
class TextEntityTypePhoneNumber extends TextEntityType {
  const TextEntityTypePhoneNumber();

  static const String constructor = 'textEntityTypePhoneNumber';

  static TextEntityTypePhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypePhoneNumber();
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
      (other.runtimeType == runtimeType && other is TextEntityTypePhoneNumber);

  @override
  int get hashCode => runtimeType.hashCode;
}
