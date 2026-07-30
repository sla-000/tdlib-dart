import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns messages in the personal chat of a given user; for bots only
/// Returns [Messages]
@immutable
class GetPersonalChatHistory extends TdFunction {
  const GetPersonalChatHistory({
    required this.userId,
    required this.limit,
  });

  /// [userId] User identifier
  final int userId;

  /// [limit] The maximum number of messages to be returned; 1-20
  final int limit;

  static const String constructor = 'getPersonalChatHistory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
