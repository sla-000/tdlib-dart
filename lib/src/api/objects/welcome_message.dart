// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a set up welcome message
@immutable
class WelcomeMessage extends TdObject {
  const WelcomeMessage({
    required this.id,
    required this.content,
  });

  /// [id] Welcome message identifier; unique for the chat to which the welcome
  /// message belongs
  final int id;

  /// [content] Content of the welcome message
  final MessageContent content;

  static const String constructor = 'welcomeMessage';

  static WelcomeMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WelcomeMessage(
      id: (json['id'] as int?) ?? 0,
      content:
          MessageContent.fromJson(json['content'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'content': content.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is WelcomeMessage &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.content, content));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(content)
      ]);
}
