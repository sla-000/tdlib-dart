// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Decrypts group call data received by tgcalls
/// Returns [Data]
@immutable
class DecryptGroupCallData extends TdFunction {
  const DecryptGroupCallData({
    required this.groupCallId,
    required this.participantId,
    this.dataChannel,
    required this.data,
  });

  /// [groupCallId] Group call identifier. The call must not be a video chat
  final int groupCallId;

  /// [participantId] Identifier of the group call participant, which sent the
  /// data
  final MessageSender participantId;

  /// [dataChannel] Data channel for which data was encrypted; pass null if
  /// unknown
  final GroupCallDataChannel? dataChannel;

  /// [data] Data to decrypt
  final String data;

  static const String constructor = 'decryptGroupCallData';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'participant_id': participantId.toJson(),
        'data_channel': dataChannel?.toJson(),
        'data': data,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DecryptGroupCallData &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality()
              .equals(other.participantId, participantId) &&
          const DeepCollectionEquality()
              .equals(other.dataChannel, dataChannel) &&
          const DeepCollectionEquality().equals(other.data, data));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(participantId),
        const DeepCollectionEquality().hash(dataChannel),
        const DeepCollectionEquality().hash(data)
      ]);
}
