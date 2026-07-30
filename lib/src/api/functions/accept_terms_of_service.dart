// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Accepts Telegram terms of service
/// Returns [Ok]
@immutable
class AcceptTermsOfService extends TdFunction {
  const AcceptTermsOfService({
    required this.termsOfServiceId,
  });

  /// [termsOfServiceId] Terms of service identifier
  final String termsOfServiceId;

  static const String constructor = 'acceptTermsOfService';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'terms_of_service_id': termsOfServiceId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AcceptTermsOfService &&
          const DeepCollectionEquality()
              .equals(other.termsOfServiceId, termsOfServiceId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(termsOfServiceId)]);
}
