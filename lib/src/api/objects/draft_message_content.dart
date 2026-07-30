import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Content of the message draft
@immutable
abstract class DraftMessageContent extends TdObject {
  const DraftMessageContent();

  static const String constructor = 'draftMessageContent';

  /// Inherited by:
  /// [DraftMessageContentRichMessage]
  /// [DraftMessageContentText]
  /// [DraftMessageContentVideoNote]
  /// [DraftMessageContentVoiceNote]
  static DraftMessageContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
