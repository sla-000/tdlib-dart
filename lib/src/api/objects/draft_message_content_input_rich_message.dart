// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A rich message draft; only for setChatDraftMessage
@immutable
class DraftMessageContentInputRichMessage extends DraftMessageContent {
  const DraftMessageContentInputRichMessage({
    required this.message,
  });

  /// [message] The rich message
  final InputRichMessage message;

  static const String constructor = 'draftMessageContentInputRichMessage';

  static DraftMessageContentInputRichMessage? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DraftMessageContentInputRichMessage(
      message:
          InputRichMessage.fromJson(json['message'] as Map<String, dynamic>?)!,
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
          other is DraftMessageContentInputRichMessage &&
          const DeepCollectionEquality().equals(other.message, message));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(message)]);
}
