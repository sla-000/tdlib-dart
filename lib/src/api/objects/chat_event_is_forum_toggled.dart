// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The is_forum setting of a channel was toggled
@immutable
class ChatEventIsForumToggled extends ChatEventAction {
  const ChatEventIsForumToggled({
    required this.isForum,
  });

  /// [isForum] New value of is_forum
  final bool isForum;

  static const String constructor = 'chatEventIsForumToggled';

  static ChatEventIsForumToggled? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventIsForumToggled(
      isForum: (json['is_forum'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_forum': isForum,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventIsForumToggled &&
          const DeepCollectionEquality().equals(other.isForum, isForum));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(isForum)]);
}
