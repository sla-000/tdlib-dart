// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains statistics about network usage
@immutable
abstract class NetworkStatisticsEntry extends TdObject {
  const NetworkStatisticsEntry();

  static const String constructor = 'networkStatisticsEntry';

  /// Inherited by:
  /// [NetworkStatisticsEntryCall]
  /// [NetworkStatisticsEntryFile]
  static NetworkStatisticsEntry? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case NetworkStatisticsEntryCall.constructor:
        return NetworkStatisticsEntryCall.fromJson(json);
      case NetworkStatisticsEntryFile.constructor:
        return NetworkStatisticsEntryFile.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is NetworkStatisticsEntry);

  @override
  int get hashCode => runtimeType.hashCode;
}
