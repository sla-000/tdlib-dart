import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes state of a suggested post
@immutable
abstract class SuggestedPostState extends TdObject {
  const SuggestedPostState();

  static const String constructor = 'suggestedPostState';

  /// Inherited by:
  /// [SuggestedPostStateApproved]
  /// [SuggestedPostStateDeclined]
  /// [SuggestedPostStatePending]
  static SuggestedPostState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SuggestedPostStateApproved.constructor:
        return SuggestedPostStateApproved.fromJson(json);
      case SuggestedPostStateDeclined.constructor:
        return SuggestedPostStateDeclined.fromJson(json);
      case SuggestedPostStatePending.constructor:
        return SuggestedPostStatePending.fromJson(json);
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
