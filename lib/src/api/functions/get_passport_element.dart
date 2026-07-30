// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns one of the available Telegram Passport elements
/// Returns [PassportElement]
@immutable
class GetPassportElement extends TdFunction {
  const GetPassportElement({
    required this.type,
    required this.password,
  });

  /// [type] Telegram Passport element type
  final PassportElementType type;

  /// [password] The 2-step verification password of the current user
  final String password;

  static const String constructor = 'getPassportElement';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        'password': password,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetPassportElement &&
          const DeepCollectionEquality().equals(other.type, type) &&
          const DeepCollectionEquality().equals(other.password, password));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(password)
      ]);
}
