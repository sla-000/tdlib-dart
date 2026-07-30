// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Informs the user that some of the elements in their Telegram Passport
/// contain errors; for bots only. The user will not be able to resend the
/// elements, until the errors are fixed
/// Returns [Ok]
@immutable
class SetPassportElementErrors extends TdFunction {
  const SetPassportElementErrors({
    required this.userId,
    required this.errors,
  });

  /// [userId] User identifier
  final int userId;

  /// [errors] The errors
  final List<InputPassportElementError> errors;

  static const String constructor = 'setPassportElementErrors';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'errors': errors.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetPassportElementErrors &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.errors, errors));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(errors)
      ]);
}
