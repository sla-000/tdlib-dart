// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A chat background was edited
@immutable
class PushMessageContentChatSetBackground extends PushMessageContent {
  const PushMessageContentChatSetBackground({
    required this.isSame,
  });

  /// [isSame] True, if the set background is the same as the background of the
  /// current user
  final bool isSame;

  static const String constructor = 'pushMessageContentChatSetBackground';

  static PushMessageContentChatSetBackground? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChatSetBackground(
      isSame: json['is_same'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_same': isSame,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PushMessageContentChatSetBackground &&
          const DeepCollectionEquality().equals(other.isSame, isSame));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(isSame)]);
}
