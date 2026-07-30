// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The messages were exported from a private chat
@immutable
class MessageFileTypePrivate extends MessageFileType {
  const MessageFileTypePrivate({
    required this.name,
  });

  /// [name] Name of the other party; may be empty if unrecognized
  final String name;

  static const String constructor = 'messageFileTypePrivate';

  static MessageFileTypePrivate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageFileTypePrivate(
      name: json['name'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageFileTypePrivate &&
          const DeepCollectionEquality().equals(other.name, name));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(name)]);
}
