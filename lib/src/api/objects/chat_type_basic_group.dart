// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A basic group (a chat with 0-200 other users)
@immutable
class ChatTypeBasicGroup extends ChatType {
  const ChatTypeBasicGroup({
    required this.basicGroupId,
  });

  /// [basicGroupId] Basic group identifier
  final int basicGroupId;

  static const String constructor = 'chatTypeBasicGroup';

  static ChatTypeBasicGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatTypeBasicGroup(
      basicGroupId: json['basic_group_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'basic_group_id': basicGroupId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatTypeBasicGroup &&
          const DeepCollectionEquality()
              .equals(other.basicGroupId, basicGroupId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(basicGroupId)]);
}
