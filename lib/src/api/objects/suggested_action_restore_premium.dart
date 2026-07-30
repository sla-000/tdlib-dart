// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Suggests the user to restore a recently expired Premium subscription
@immutable
class SuggestedActionRestorePremium extends SuggestedAction {
  const SuggestedActionRestorePremium();

  static const String constructor = 'suggestedActionRestorePremium';

  static SuggestedActionRestorePremium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionRestorePremium();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SuggestedActionRestorePremium);

  @override
  int get hashCode => runtimeType.hashCode;
}
