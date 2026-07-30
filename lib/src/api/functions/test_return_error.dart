// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the specified error and ensures that the Error object is used; for
/// testing only. Can be called synchronously
/// Returns [Error]
@immutable
class TestReturnError extends TdFunction {
  const TestReturnError({
    required this.error,
  });

  /// [error] The error to be returned
  final TdError error;

  static const String constructor = 'testReturnError';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'error': error.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TestReturnError &&
          const DeepCollectionEquality().equals(other.error, error));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(error)]);
}
