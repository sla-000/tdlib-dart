// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Suggests the user to add a passkey for login using addLoginPasskey
@immutable
class SuggestedActionAddLoginPasskey extends SuggestedAction {
  const SuggestedActionAddLoginPasskey();

  static const String constructor = 'suggestedActionAddLoginPasskey';

  static SuggestedActionAddLoginPasskey? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionAddLoginPasskey();
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
          other is SuggestedActionAddLoginPasskey);

  @override
  int get hashCode => runtimeType.hashCode;
}
