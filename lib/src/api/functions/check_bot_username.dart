import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks whether a username can be set for a new bot. Use checkChatUsername
/// to check username for other chat types
/// Returns [CheckChatUsernameResult]
@immutable
class CheckBotUsername extends TdFunction {
  const CheckBotUsername({
    required this.username,
  });

  /// [username] Username to be checked
  final String username;

  static const String constructor = 'checkBotUsername';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'username': username,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
