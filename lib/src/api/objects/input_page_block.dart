import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a block of a rich message to send
@immutable
abstract class InputPageBlock extends TdObject {
  const InputPageBlock();

  static const String constructor = 'inputPageBlock';

  /// Inherited by:
  /// [InputPageBlockAnchor]
  /// [InputPageBlockAnimation]
  /// [InputPageBlockAudio]
  /// [InputPageBlockBlockQuote]
  /// [InputPageBlockCollage]
  /// [InputPageBlockDetails]
  /// [InputPageBlockDivider]
  /// [InputPageBlockFooter]
  /// [InputPageBlockList]
  /// [InputPageBlockMap]
  /// [InputPageBlockMathematicalExpression]
  /// [InputPageBlockParagraph]
  /// [InputPageBlockPhoto]
  /// [InputPageBlockPreformatted]
  /// [InputPageBlockPullQuote]
  /// [InputPageBlockSectionHeading]
  /// [InputPageBlockSlideshow]
  /// [InputPageBlockTable]
  /// [InputPageBlockThinking]
  /// [InputPageBlockVideo]
  /// [InputPageBlockVoiceNote]
  static InputPageBlock? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputPageBlockAnchor.constructor:
        return InputPageBlockAnchor.fromJson(json);
      case InputPageBlockAnimation.constructor:
        return InputPageBlockAnimation.fromJson(json);
      case InputPageBlockAudio.constructor:
        return InputPageBlockAudio.fromJson(json);
      case InputPageBlockBlockQuote.constructor:
        return InputPageBlockBlockQuote.fromJson(json);
      case InputPageBlockCollage.constructor:
        return InputPageBlockCollage.fromJson(json);
      case InputPageBlockDetails.constructor:
        return InputPageBlockDetails.fromJson(json);
      case InputPageBlockDivider.constructor:
        return InputPageBlockDivider.fromJson(json);
      case InputPageBlockFooter.constructor:
        return InputPageBlockFooter.fromJson(json);
      case InputPageBlockList.constructor:
        return InputPageBlockList.fromJson(json);
      case InputPageBlockMap.constructor:
        return InputPageBlockMap.fromJson(json);
      case InputPageBlockMathematicalExpression.constructor:
        return InputPageBlockMathematicalExpression.fromJson(json);
      case InputPageBlockParagraph.constructor:
        return InputPageBlockParagraph.fromJson(json);
      case InputPageBlockPhoto.constructor:
        return InputPageBlockPhoto.fromJson(json);
      case InputPageBlockPreformatted.constructor:
        return InputPageBlockPreformatted.fromJson(json);
      case InputPageBlockPullQuote.constructor:
        return InputPageBlockPullQuote.fromJson(json);
      case InputPageBlockSectionHeading.constructor:
        return InputPageBlockSectionHeading.fromJson(json);
      case InputPageBlockSlideshow.constructor:
        return InputPageBlockSlideshow.fromJson(json);
      case InputPageBlockTable.constructor:
        return InputPageBlockTable.fromJson(json);
      case InputPageBlockThinking.constructor:
        return InputPageBlockThinking.fromJson(json);
      case InputPageBlockVideo.constructor:
        return InputPageBlockVideo.fromJson(json);
      case InputPageBlockVoiceNote.constructor:
        return InputPageBlockVoiceNote.fromJson(json);
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
