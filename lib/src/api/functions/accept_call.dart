// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Accepts an incoming call
/// Returns [Ok]
@immutable
class AcceptCall extends TdFunction {
  const AcceptCall({
    required this.callId,
    required this.protocol,
  });

  /// [callId] Call identifier
  final int callId;

  /// [protocol] The call protocols supported by the application
  final CallProtocol protocol;

  static const String constructor = 'acceptCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'call_id': callId,
        'protocol': protocol.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AcceptCall &&
          const DeepCollectionEquality().equals(other.callId, callId) &&
          const DeepCollectionEquality().equals(other.protocol, protocol));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(callId),
        const DeepCollectionEquality().hash(protocol)
      ]);
}
