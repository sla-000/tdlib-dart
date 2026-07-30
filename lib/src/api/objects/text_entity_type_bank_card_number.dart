// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A bank card number. The getBankCardInfo method can be used to get
/// information about the bank card
@immutable
class TextEntityTypeBankCardNumber extends TextEntityType {
  const TextEntityTypeBankCardNumber();

  static const String constructor = 'textEntityTypeBankCardNumber';

  static TextEntityTypeBankCardNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeBankCardNumber();
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
          other is TextEntityTypeBankCardNumber);

  @override
  int get hashCode => runtimeType.hashCode;
}
