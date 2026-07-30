import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A sticker
@immutable
class InputPollMediaSticker extends InputPollMedia {
  const InputPollMediaSticker({
    required this.sticker,
  });

  /// [sticker] Sticker to be sent
  final InputSticker sticker;

  static const String constructor = 'inputPollMediaSticker';

  static InputPollMediaSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollMediaSticker(
      sticker: InputSticker.fromJson(json['sticker'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
