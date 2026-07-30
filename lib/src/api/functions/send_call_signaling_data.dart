// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends call signaling data
/// Returns [Ok]
@immutable
class SendCallSignalingData extends TdFunction {
  const SendCallSignalingData({
    required this.callId,
    required this.data,
  });

  /// [callId] Call identifier
  final int callId;

  /// [data] The data
  final String data;

  static const String constructor = 'sendCallSignalingData';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'call_id': callId,
        'data': data,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SendCallSignalingData &&
          const DeepCollectionEquality().equals(other.callId, callId) &&
          const DeepCollectionEquality().equals(other.data, data));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(callId),
        const DeepCollectionEquality().hash(data)
      ]);
}
