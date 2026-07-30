// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Suggests the user to add login email address. Call
/// isLoginEmailAddressRequired, and then setLoginEmailAddress or
/// checkLoginEmailAddressCode to change the login email address
@immutable
class SuggestedActionSetLoginEmailAddress extends SuggestedAction {
  const SuggestedActionSetLoginEmailAddress({
    required this.canBeHidden,
  });

  /// [canBeHidden] True, if the suggested action can be hidden using
  /// hideSuggestedAction. Otherwise, the user must not be able to use the
  /// application without setting up the email address
  final bool canBeHidden;

  static const String constructor = 'suggestedActionSetLoginEmailAddress';

  static SuggestedActionSetLoginEmailAddress? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SuggestedActionSetLoginEmailAddress(
      canBeHidden: json['can_be_hidden'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'can_be_hidden': canBeHidden,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SuggestedActionSetLoginEmailAddress &&
          const DeepCollectionEquality()
              .equals(other.canBeHidden, canBeHidden));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(canBeHidden)]);
}
