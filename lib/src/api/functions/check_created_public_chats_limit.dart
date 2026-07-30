// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Checks whether the maximum number of owned public chats has been reached.
/// Returns corresponding error if the limit was reached. The limit can be
/// increased with Telegram Premium
/// Returns [Ok]
@immutable
class CheckCreatedPublicChatsLimit extends TdFunction {
  const CheckCreatedPublicChatsLimit({
    required this.type,
  });

  /// [type] Type of the public chats, for which to check the limit
  final PublicChatType type;

  static const String constructor = 'checkCreatedPublicChatsLimit';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CheckCreatedPublicChatsLimit &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(type)]);
}
