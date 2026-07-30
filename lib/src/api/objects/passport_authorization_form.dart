// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a Telegram Passport authorization form that was
/// requested
@immutable
class PassportAuthorizationForm extends TdObject {
  const PassportAuthorizationForm({
    required this.id,
    required this.requiredElements,
    required this.privacyPolicyUrl,
  });

  /// [id] Unique identifier of the authorization form
  final int id;

  /// [requiredElements] Telegram Passport elements that must be provided to
  /// complete the form
  final List<PassportRequiredElement> requiredElements;

  /// [privacyPolicyUrl] URL for the privacy policy of the service; may be empty
  final String privacyPolicyUrl;

  static const String constructor = 'passportAuthorizationForm';

  static PassportAuthorizationForm? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportAuthorizationForm(
      id: json['id'] as int,
      requiredElements: List<PassportRequiredElement>.from(
          ((json['required_elements'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PassportRequiredElement.fromJson(item))
              .toList()),
      privacyPolicyUrl: json['privacy_policy_url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'required_elements':
            requiredElements.map((item) => item.toJson()).toList(),
        'privacy_policy_url': privacyPolicyUrl,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PassportAuthorizationForm &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality()
              .equals(other.requiredElements, requiredElements) &&
          const DeepCollectionEquality()
              .equals(other.privacyPolicyUrl, privacyPolicyUrl));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(requiredElements),
        const DeepCollectionEquality().hash(privacyPolicyUrl)
      ]);
}
