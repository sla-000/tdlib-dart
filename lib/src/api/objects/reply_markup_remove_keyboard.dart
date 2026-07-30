// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Instructs application to remove the keyboard once this message has been
/// received. This kind of keyboard can't be received in an incoming message;
/// instead, updateChatReplyMarkup with reply_markup_message == null will be
/// sent
@immutable
class ReplyMarkupRemoveKeyboard extends ReplyMarkup {
  const ReplyMarkupRemoveKeyboard({
    required this.isPersonal,
  });

  /// [isPersonal] True, if the keyboard is removed only for the mentioned users
  /// or the target user of a reply
  final bool isPersonal;

  static const String constructor = 'replyMarkupRemoveKeyboard';

  static ReplyMarkupRemoveKeyboard? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReplyMarkupRemoveKeyboard(
      isPersonal: json['is_personal'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_personal': isPersonal,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReplyMarkupRemoveKeyboard &&
          const DeepCollectionEquality().equals(other.isPersonal, isPersonal));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(isPersonal)]);
}
