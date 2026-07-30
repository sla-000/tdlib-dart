// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A rich message draft; not supported in setChatDraftMessage
@immutable
class DraftMessageContentRichMessage extends DraftMessageContent {
  const DraftMessageContentRichMessage({
    required this.message,
  });

  /// [message] The rich message; the message must not have not yet uploaded
  /// media
  final RichMessage message;

  static const String constructor = 'draftMessageContentRichMessage';

  static DraftMessageContentRichMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DraftMessageContentRichMessage(
      message: RichMessage.fromJson(json['message'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DraftMessageContentRichMessage &&
          const DeepCollectionEquality().equals(other.message, message));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(message)]);
}
