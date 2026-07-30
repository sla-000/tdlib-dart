// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Reports that authentication code wasn't delivered via SMS; for official
/// mobile applications only. Works only when the current authorization state
/// is authorizationStateWaitCode
/// Returns [Ok]
@immutable
class ReportAuthenticationCodeMissing extends TdFunction {
  const ReportAuthenticationCodeMissing({
    required this.mobileNetworkCode,
  });

  /// [mobileNetworkCode] Current mobile network code
  final String mobileNetworkCode;

  static const String constructor = 'reportAuthenticationCodeMissing';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'mobile_network_code': mobileNetworkCode,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReportAuthenticationCodeMissing &&
          const DeepCollectionEquality()
              .equals(other.mobileNetworkCode, mobileNetworkCode));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(mobileNetworkCode)]);
}
