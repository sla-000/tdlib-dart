// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a list of public chats of the specified type, owned by the user
/// Returns [Chats]
@immutable
class GetCreatedPublicChats extends TdFunction {
  const GetCreatedPublicChats({
    required this.type,
  });

  /// [type] Type of the public chats to return
  final PublicChatType type;

  static const String constructor = 'getCreatedPublicChats';

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
          other is GetCreatedPublicChats &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(type)]);
}
