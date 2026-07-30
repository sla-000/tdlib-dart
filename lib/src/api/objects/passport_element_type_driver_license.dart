// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's driver license
@immutable
class PassportElementTypeDriverLicense extends PassportElementType {
  const PassportElementTypeDriverLicense();

  static const String constructor = 'passportElementTypeDriverLicense';

  static PassportElementTypeDriverLicense? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeDriverLicense();
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
          other is PassportElementTypeDriverLicense);

  @override
  int get hashCode => runtimeType.hashCode;
}
