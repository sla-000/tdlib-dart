// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about the total amount of data that was used for
/// calls
@immutable
class NetworkStatisticsEntryCall extends NetworkStatisticsEntry {
  const NetworkStatisticsEntryCall({
    required this.networkType,
    required this.sentBytes,
    required this.receivedBytes,
    required this.duration,
  });

  /// [networkType] Type of the network the data was sent through. Call
  /// setNetworkType to maintain the actual network type
  final NetworkType networkType;

  /// [sentBytes] Total number of bytes sent
  final int sentBytes;

  /// [receivedBytes] Total number of bytes received
  final int receivedBytes;

  /// [duration] Total call duration, in seconds
  final double duration;

  static const String constructor = 'networkStatisticsEntryCall';

  static NetworkStatisticsEntryCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NetworkStatisticsEntryCall(
      networkType:
          NetworkType.fromJson(json['network_type'] as Map<String, dynamic>?)!,
      sentBytes: (json['sent_bytes'] as int?) ?? 0,
      receivedBytes: (json['received_bytes'] as int?) ?? 0,
      duration: (json['duration'] as num?)?.toDouble() ?? 0.0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'network_type': networkType.toJson(),
        'sent_bytes': sentBytes,
        'received_bytes': receivedBytes,
        'duration': duration,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is NetworkStatisticsEntryCall &&
          const DeepCollectionEquality()
              .equals(other.networkType, networkType) &&
          const DeepCollectionEquality().equals(other.sentBytes, sentBytes) &&
          const DeepCollectionEquality()
              .equals(other.receivedBytes, receivedBytes) &&
          const DeepCollectionEquality().equals(other.duration, duration));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(networkType),
        const DeepCollectionEquality().hash(sentBytes),
        const DeepCollectionEquality().hash(receivedBytes),
        const DeepCollectionEquality().hash(duration)
      ]);
}
