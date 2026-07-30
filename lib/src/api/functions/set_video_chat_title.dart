// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets title of a video chat; requires groupCall.can_be_managed right
/// Returns [Ok]
@immutable
class SetVideoChatTitle extends TdFunction {
  const SetVideoChatTitle({
    required this.groupCallId,
    required this.title,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [title] New group call title; 1-64 characters
  final String title;

  static const String constructor = 'setVideoChatTitle';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetVideoChatTitle &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality().equals(other.title, title));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(title)
      ]);
}
