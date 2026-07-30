// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a default placeholder for Web Apps of a bot. This is an offline
/// method. Returns a 404 error if the placeholder isn't known
/// Returns [Outline]
@immutable
class GetWebAppPlaceholder extends TdFunction {
  const GetWebAppPlaceholder({
    required this.botUserId,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  static const String constructor = 'getWebAppPlaceholder';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetWebAppPlaceholder &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(botUserId)]);
}
