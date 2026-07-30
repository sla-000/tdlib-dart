import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The gift can't be sent now by the current user
@immutable
class CanSendGiftResultFail extends CanSendGiftResult {
  const CanSendGiftResultFail({
    required this.reason,
  });

  /// [reason] Reason to be shown to the user
  final FormattedText reason;

  static const String constructor = 'canSendGiftResultFail';

  static CanSendGiftResultFail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CanSendGiftResultFail(
      reason: FormattedText.fromJson(json['reason'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reason': reason.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
