// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends log file for a call to Telegram servers
/// Returns [Ok]
@immutable
class SendCallLog extends TdFunction {
  const SendCallLog({
    required this.callId,
    required this.logFile,
  });

  /// [callId] Call identifier
  final InputCall callId;

  /// [logFile] Call log file. Only inputFileLocal and inputFileGenerated are
  /// supported
  final InputFile logFile;

  static const String constructor = 'sendCallLog';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'call_id': callId.toJson(),
        'log_file': logFile.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SendCallLog &&
          const DeepCollectionEquality().equals(other.callId, callId) &&
          const DeepCollectionEquality().equals(other.logFile, logFile));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(callId),
        const DeepCollectionEquality().hash(logFile)
      ]);
}
