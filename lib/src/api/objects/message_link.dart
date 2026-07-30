// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains an HTTPS link to a message in a supergroup or channel, or a forum
/// topic
@immutable
class MessageLink extends TdObject {
  const MessageLink({
    required this.link,
    required this.isPublic,
  });

  /// [link] The link
  final String link;

  /// [isPublic] True, if the link will work for non-members of the chat
  final bool isPublic;

  static const String constructor = 'messageLink';

  static MessageLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageLink(
      link: json['link'] as String,
      isPublic: json['is_public'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'link': link,
        'is_public': isPublic,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageLink &&
          const DeepCollectionEquality().equals(other.link, link) &&
          const DeepCollectionEquality().equals(other.isPublic, isPublic));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(link),
        const DeepCollectionEquality().hash(isPublic)
      ]);
}
