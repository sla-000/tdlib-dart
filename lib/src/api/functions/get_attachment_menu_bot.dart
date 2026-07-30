// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a bot that can be added to attachment or side
/// menu
/// Returns [AttachmentMenuBot]
@immutable
class GetAttachmentMenuBot extends TdFunction {
  const GetAttachmentMenuBot({
    required this.botUserId,
  });

  /// [botUserId] Bot's user identifier
  final int botUserId;

  static const String constructor = 'getAttachmentMenuBot';

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
          other is GetAttachmentMenuBot &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(botUserId)]);
}
