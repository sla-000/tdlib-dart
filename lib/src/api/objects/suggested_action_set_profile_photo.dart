// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Suggests the user to set profile photo
@immutable
class SuggestedActionSetProfilePhoto extends SuggestedAction {
  const SuggestedActionSetProfilePhoto();

  static const String constructor = 'suggestedActionSetProfilePhoto';

  static SuggestedActionSetProfilePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionSetProfilePhoto();
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
          other is SuggestedActionSetProfilePhoto);

  @override
  int get hashCode => runtimeType.hashCode;
}
