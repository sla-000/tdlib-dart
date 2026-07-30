// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about the total amount of data that was used to send
/// and receive files
@immutable
class NetworkStatisticsEntryFile extends NetworkStatisticsEntry {
  const NetworkStatisticsEntryFile({
    this.fileType,
    required this.networkType,
    required this.sentBytes,
    required this.receivedBytes,
  });

  /// [fileType] Type of the file the data is part of; pass null if the data
  /// isn't related to files
  final FileType? fileType;

  /// [networkType] Type of the network the data was sent through. Call
  /// setNetworkType to maintain the actual network type
  final NetworkType networkType;

  /// [sentBytes] Total number of bytes sent
  final int sentBytes;

  /// [receivedBytes] Total number of bytes received
  final int receivedBytes;

  static const String constructor = 'networkStatisticsEntryFile';

  static NetworkStatisticsEntryFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NetworkStatisticsEntryFile(
      fileType: FileType.fromJson(json['file_type'] as Map<String, dynamic>?),
      networkType:
          NetworkType.fromJson(json['network_type'] as Map<String, dynamic>?)!,
      sentBytes: (json['sent_bytes'] as int?) ?? 0,
      receivedBytes: (json['received_bytes'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_type': fileType?.toJson(),
        'network_type': networkType.toJson(),
        'sent_bytes': sentBytes,
        'received_bytes': receivedBytes,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is NetworkStatisticsEntryFile &&
          const DeepCollectionEquality().equals(other.fileType, fileType) &&
          const DeepCollectionEquality()
              .equals(other.networkType, networkType) &&
          const DeepCollectionEquality().equals(other.sentBytes, sentBytes) &&
          const DeepCollectionEquality()
              .equals(other.receivedBytes, receivedBytes));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(fileType),
        const DeepCollectionEquality().hash(networkType),
        const DeepCollectionEquality().hash(sentBytes),
        const DeepCollectionEquality().hash(receivedBytes)
      ]);
}
