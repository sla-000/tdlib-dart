// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns all available Telegram Passport elements
/// Returns [PassportElements]
@immutable
class GetAllPassportElements extends TdFunction {
  const GetAllPassportElements({
    required this.password,
  });

  /// [password] The 2-step verification password of the current user
  final String password;

  static const String constructor = 'getAllPassportElements';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'password': password,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetAllPassportElements &&
          const DeepCollectionEquality().equals(other.password, password));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(password)]);
}
