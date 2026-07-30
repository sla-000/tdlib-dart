// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends debug information for a call to Telegram servers
/// Returns [Ok]
@immutable
class SendCallDebugInformation extends TdFunction {
  const SendCallDebugInformation({
    required this.callId,
    required this.debugInformation,
  });

  /// [callId] Call identifier
  final InputCall callId;

  /// [debugInformation] Debug information in application-specific format
  final String debugInformation;

  static const String constructor = 'sendCallDebugInformation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'call_id': callId.toJson(),
        'debug_information': debugInformation,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SendCallDebugInformation &&
          const DeepCollectionEquality().equals(other.callId, callId) &&
          const DeepCollectionEquality()
              .equals(other.debugInformation, debugInformation));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(callId),
        const DeepCollectionEquality().hash(debugInformation)
      ]);
}
