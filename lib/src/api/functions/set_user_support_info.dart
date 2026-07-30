// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets support information for the given user; for Telegram support only
/// Returns [UserSupportInfo]
@immutable
class SetUserSupportInfo extends TdFunction {
  const SetUserSupportInfo({
    required this.userId,
    required this.message,
  });

  /// [userId] User identifier
  final int userId;

  /// [message] New information message
  final FormattedText message;

  static const String constructor = 'setUserSupportInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'message': message.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetUserSupportInfo &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.message, message));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(message)
      ]);
}
