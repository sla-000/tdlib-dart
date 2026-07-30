// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's address
@immutable
class PassportElementTypeAddress extends PassportElementType {
  const PassportElementTypeAddress();

  static const String constructor = 'passportElementTypeAddress';

  static PassportElementTypeAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeAddress();
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
      (other.runtimeType == runtimeType && other is PassportElementTypeAddress);

  @override
  int get hashCode => runtimeType.hashCode;
}
