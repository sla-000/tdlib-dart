// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Instructs application to force a reply to this message
@immutable
class ReplyMarkupForceReply extends ReplyMarkup {
  const ReplyMarkupForceReply({
    required this.isPersonal,
    required this.inputFieldPlaceholder,
  });

  /// [isPersonal] True, if a forced reply must automatically be shown to the
  /// current user. For outgoing messages, specify true to show the forced reply
  /// only for the mentioned users and for the target user of a reply
  final bool isPersonal;

  /// [inputFieldPlaceholder] If non-empty, the placeholder to be shown in the
  /// input field when the reply is active; 0-64 characters
  final String inputFieldPlaceholder;

  static const String constructor = 'replyMarkupForceReply';

  static ReplyMarkupForceReply? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReplyMarkupForceReply(
      isPersonal: (json['is_personal'] as bool?) ?? false,
      inputFieldPlaceholder: (json['input_field_placeholder'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_personal': isPersonal,
        'input_field_placeholder': inputFieldPlaceholder,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReplyMarkupForceReply &&
          const DeepCollectionEquality().equals(other.isPersonal, isPersonal) &&
          const DeepCollectionEquality()
              .equals(other.inputFieldPlaceholder, inputFieldPlaceholder));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(isPersonal),
        const DeepCollectionEquality().hash(inputFieldPlaceholder)
      ]);
}
