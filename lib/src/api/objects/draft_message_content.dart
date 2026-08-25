// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Content of the message draft
@immutable
abstract class DraftMessageContent extends TdObject {
  const DraftMessageContent();

  static const String constructor = 'draftMessageContent';

  /// Inherited by:
  /// [DraftMessageContentInputRichMessage]
  /// [DraftMessageContentRichMessage]
  /// [DraftMessageContentText]
  /// [DraftMessageContentVideoNote]
  /// [DraftMessageContentVoiceNote]
  static DraftMessageContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case DraftMessageContentInputRichMessage.constructor:
        return DraftMessageContentInputRichMessage.fromJson(json);
      case DraftMessageContentRichMessage.constructor:
        return DraftMessageContentRichMessage.fromJson(json);
      case DraftMessageContentText.constructor:
        return DraftMessageContentText.fromJson(json);
      case DraftMessageContentVideoNote.constructor:
        return DraftMessageContentVideoNote.fromJson(json);
      case DraftMessageContentVoiceNote.constructor:
        return DraftMessageContentVoiceNote.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is DraftMessageContent);

  @override
  int get hashCode => runtimeType.hashCode;
}
