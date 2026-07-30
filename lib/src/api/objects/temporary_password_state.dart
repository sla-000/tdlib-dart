// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about the availability of a temporary password, which
/// can be used for payments
@immutable
class TemporaryPasswordState extends TdObject {
  const TemporaryPasswordState({
    required this.hasPassword,
    required this.validFor,
  });

  /// [hasPassword] True, if a temporary password is available
  final bool hasPassword;

  /// [validFor] Time left before the temporary password expires, in seconds
  final int validFor;

  static const String constructor = 'temporaryPasswordState';

  static TemporaryPasswordState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TemporaryPasswordState(
      hasPassword: (json['has_password'] as bool?) ?? false,
      validFor: (json['valid_for'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'has_password': hasPassword,
        'valid_for': validFor,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TemporaryPasswordState &&
          const DeepCollectionEquality()
              .equals(other.hasPassword, hasPassword) &&
          const DeepCollectionEquality().equals(other.validFor, validFor));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(hasPassword),
        const DeepCollectionEquality().hash(validFor)
      ]);
}
