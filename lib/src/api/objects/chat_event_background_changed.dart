// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat background was changed
@immutable
class ChatEventBackgroundChanged extends ChatEventAction {
  const ChatEventBackgroundChanged({
    this.oldBackground,
    this.newBackground,
  });

  /// [oldBackground] Previous background; may be null if none
  final ChatBackground? oldBackground;

  /// [newBackground] New background; may be null if none
  final ChatBackground? newBackground;

  static const String constructor = 'chatEventBackgroundChanged';

  static ChatEventBackgroundChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventBackgroundChanged(
      oldBackground: ChatBackground.fromJson(
          json['old_background'] as Map<String, dynamic>?),
      newBackground: ChatBackground.fromJson(
          json['new_background'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_background': oldBackground?.toJson(),
        'new_background': newBackground?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventBackgroundChanged &&
          const DeepCollectionEquality()
              .equals(other.oldBackground, oldBackground) &&
          const DeepCollectionEquality()
              .equals(other.newBackground, newBackground));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(oldBackground),
        const DeepCollectionEquality().hash(newBackground)
      ]);
}
