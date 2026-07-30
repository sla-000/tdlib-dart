import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Crafting isn't possible because one of the gifts can't be used for
/// crafting yet
@immutable
class CraftGiftResultTooEarly extends CraftGiftResult {
  const CraftGiftResultTooEarly({
    required this.retryAfter,
  });

  /// [retryAfter] Time left before the gift can be used for crafting
  final int retryAfter;

  static const String constructor = 'craftGiftResultTooEarly';

  static CraftGiftResultTooEarly? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CraftGiftResultTooEarly(
      retryAfter: json['retry_after'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'retry_after': retryAfter,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
