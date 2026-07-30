// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Suggests the user to set a 2-step verification password to be able to log
/// in again
@immutable
class SuggestedActionSetPassword extends SuggestedAction {
  const SuggestedActionSetPassword({
    required this.authorizationDelay,
  });

  /// [authorizationDelay] The number of days to pass between consecutive
  /// authorizations if the user declines to set password; if 0, then the user
  /// is advised to set the password for security reasons
  final int authorizationDelay;

  static const String constructor = 'suggestedActionSetPassword';

  static SuggestedActionSetPassword? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SuggestedActionSetPassword(
      authorizationDelay: json['authorization_delay'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'authorization_delay': authorizationDelay,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SuggestedActionSetPassword &&
          const DeepCollectionEquality()
              .equals(other.authorizationDelay, authorizationDelay));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(authorizationDelay)]);
}
