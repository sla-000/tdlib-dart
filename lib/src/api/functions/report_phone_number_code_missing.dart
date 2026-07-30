// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Reports that authentication code wasn't delivered via SMS to the specified
/// phone number; for official mobile applications only
/// Returns [Ok]
@immutable
class ReportPhoneNumberCodeMissing extends TdFunction {
  const ReportPhoneNumberCodeMissing({
    required this.mobileNetworkCode,
  });

  /// [mobileNetworkCode] Current mobile network code
  final String mobileNetworkCode;

  static const String constructor = 'reportPhoneNumberCodeMissing';

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
          other is ReportPhoneNumberCodeMissing &&
          const DeepCollectionEquality()
              .equals(other.mobileNetworkCode, mobileNetworkCode));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(mobileNetworkCode)]);
}
