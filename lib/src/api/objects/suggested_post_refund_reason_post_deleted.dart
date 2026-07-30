import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The post was refunded, because it was deleted by channel administrators in
/// less than getOption("suggested_post_lifetime_min") seconds
@immutable
class SuggestedPostRefundReasonPostDeleted extends SuggestedPostRefundReason {
  const SuggestedPostRefundReasonPostDeleted();

  static const String constructor = 'suggestedPostRefundReasonPostDeleted';

  static SuggestedPostRefundReasonPostDeleted? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedPostRefundReasonPostDeleted();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
