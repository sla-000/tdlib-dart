// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's personal details
@immutable
class PassportElementTypePersonalDetails extends PassportElementType {
  const PassportElementTypePersonalDetails();

  static const String constructor = 'passportElementTypePersonalDetails';

  static PassportElementTypePersonalDetails? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypePersonalDetails();
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
          other is PassportElementTypePersonalDetails);

  @override
  int get hashCode => runtimeType.hashCode;
}
