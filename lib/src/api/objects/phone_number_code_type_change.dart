// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Checks ownership of a new phone number to change the user's authentication
/// phone number; for official Android and iOS applications only
@immutable
class PhoneNumberCodeTypeChange extends PhoneNumberCodeType {
  const PhoneNumberCodeTypeChange();

  static const String constructor = 'phoneNumberCodeTypeChange';

  static PhoneNumberCodeTypeChange? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PhoneNumberCodeTypeChange();
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
      (other.runtimeType == runtimeType && other is PhoneNumberCodeTypeChange);

  @override
  int get hashCode => runtimeType.hashCode;
}
