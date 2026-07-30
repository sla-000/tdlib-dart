// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat description was changed
@immutable
class ChatEventDescriptionChanged extends ChatEventAction {
  const ChatEventDescriptionChanged({
    required this.oldDescription,
    required this.newDescription,
  });

  /// [oldDescription] Previous chat description
  final String oldDescription;

  /// [newDescription] New chat description
  final String newDescription;

  static const String constructor = 'chatEventDescriptionChanged';

  static ChatEventDescriptionChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventDescriptionChanged(
      oldDescription: json['old_description'] as String,
      newDescription: json['new_description'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_description': oldDescription,
        'new_description': newDescription,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventDescriptionChanged &&
          const DeepCollectionEquality()
              .equals(other.oldDescription, oldDescription) &&
          const DeepCollectionEquality()
              .equals(other.newDescription, newDescription));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(oldDescription),
        const DeepCollectionEquality().hash(newDescription)
      ]);
}
