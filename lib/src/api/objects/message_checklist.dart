// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with a checklist
@immutable
class MessageChecklist extends MessageContent {
  const MessageChecklist({
    required this.list,
  });

  /// [list] The checklist description
  final Checklist list;

  static const String constructor = 'messageChecklist';

  static MessageChecklist? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChecklist(
      list: Checklist.fromJson(json['list'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'list': list.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageChecklist &&
          const DeepCollectionEquality().equals(other.list, list));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(list)]);
}
