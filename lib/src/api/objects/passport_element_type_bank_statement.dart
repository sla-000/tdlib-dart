// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's bank statement
@immutable
class PassportElementTypeBankStatement extends PassportElementType {
  const PassportElementTypeBankStatement();

  static const String constructor = 'passportElementTypeBankStatement';

  static PassportElementTypeBankStatement? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeBankStatement();
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
          other is PassportElementTypeBankStatement);

  @override
  int get hashCode => runtimeType.hashCode;
}
