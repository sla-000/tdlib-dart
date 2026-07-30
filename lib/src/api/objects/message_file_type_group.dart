// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The messages were exported from a group chat
@immutable
class MessageFileTypeGroup extends MessageFileType {
  const MessageFileTypeGroup({
    required this.title,
  });

  /// [title] Title of the group chat; may be empty if unrecognized
  final String title;

  static const String constructor = 'messageFileTypeGroup';

  static MessageFileTypeGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageFileTypeGroup(
      title: json['title'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageFileTypeGroup &&
          const DeepCollectionEquality().equals(other.title, title));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(title)]);
}
