// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A rich message to send
@immutable
class InputRichMessage extends TdObject {
  const InputRichMessage({
    required this.source,
    required this.isRtl,
    required this.detectAutomaticBlocks,
  });

  /// [source] Source of the rich message
  final RichMessageSource source;

  /// [isRtl] Pass true if the message must be shown from right to left
  final bool isRtl;

  /// [detectAutomaticBlocks] Pass true to enable detection of URLs, email
  /// addresses and other automatic blocks
  final bool detectAutomaticBlocks;

  static const String constructor = 'inputRichMessage';

  static InputRichMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputRichMessage(
      source:
          RichMessageSource.fromJson(json['source'] as Map<String, dynamic>?)!,
      isRtl: (json['is_rtl'] as bool?) ?? false,
      detectAutomaticBlocks:
          (json['detect_automatic_blocks'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'source': source.toJson(),
        'is_rtl': isRtl,
        'detect_automatic_blocks': detectAutomaticBlocks,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputRichMessage &&
          const DeepCollectionEquality().equals(other.source, source) &&
          const DeepCollectionEquality().equals(other.isRtl, isRtl) &&
          const DeepCollectionEquality()
              .equals(other.detectAutomaticBlocks, detectAutomaticBlocks));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(source),
        const DeepCollectionEquality().hash(isRtl),
        const DeepCollectionEquality().hash(detectAutomaticBlocks)
      ]);
}
