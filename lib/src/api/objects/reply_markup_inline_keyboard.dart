// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains an inline keyboard layout
@immutable
class ReplyMarkupInlineKeyboard extends ReplyMarkup {
  const ReplyMarkupInlineKeyboard({
    required this.rows,
    required this.forceReply,
  });

  /// [rows] A list of rows of inline keyboard buttons
  final List<List<InlineKeyboardButton>> rows;

  /// [forceReply] True, if a reply to the message must be forced when the
  /// message is received
  final bool forceReply;

  static const String constructor = 'replyMarkupInlineKeyboard';

  static ReplyMarkupInlineKeyboard? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReplyMarkupInlineKeyboard(
      rows: List<List<InlineKeyboardButton>>.from(
          ((json['rows'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => List<InlineKeyboardButton>.from(
                  ((item as List<dynamic>?) ?? <dynamic>[])
                      .map((item) => InlineKeyboardButton.fromJson(
                          item as Map<String, dynamic>?))
                      .toList()))
              .toList()),
      forceReply: (json['force_reply'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'rows': rows
            .map((item) => item.map((item) => item.toJson()).toList())
            .toList(),
        'force_reply': forceReply,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReplyMarkupInlineKeyboard &&
          const DeepCollectionEquality().equals(other.rows, rows) &&
          const DeepCollectionEquality().equals(other.forceReply, forceReply));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(rows),
        const DeepCollectionEquality().hash(forceReply)
      ]);
}
