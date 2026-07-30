// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Reports a chat photo to the Telegram moderators. A chat photo can be
/// reported only if chat.can_be_reported
/// Returns [Ok]
@immutable
class ReportChatPhoto extends TdFunction {
  const ReportChatPhoto({
    required this.chatId,
    required this.fileId,
    required this.reason,
    required this.text,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [fileId] Identifier of the photo to report. Only full photos from
  /// chatPhoto can be reported
  final int fileId;

  /// [reason] The reason for reporting the chat photo
  final ReportReason reason;

  /// [text] Additional report details; 0-1024 characters
  final String text;

  static const String constructor = 'reportChatPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'file_id': fileId,
        'reason': reason.toJson(),
        'text': text,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReportChatPhoto &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.fileId, fileId) &&
          const DeepCollectionEquality().equals(other.reason, reason) &&
          const DeepCollectionEquality().equals(other.text, text));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(fileId),
        const DeepCollectionEquality().hash(reason),
        const DeepCollectionEquality().hash(text)
      ]);
}
