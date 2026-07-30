import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The parameters for age verification of the current user's account have
/// changed
@immutable
class UpdateAgeVerificationParameters extends Update {
  const UpdateAgeVerificationParameters({
    this.parameters,
  });

  /// [parameters] Parameters for the age verification; may be null if age
  /// verification isn't needed
  final AgeVerificationParameters? parameters;

  static const String constructor = 'updateAgeVerificationParameters';

  static UpdateAgeVerificationParameters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateAgeVerificationParameters(
      parameters: AgeVerificationParameters.fromJson(
          json['parameters'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'parameters': parameters?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
