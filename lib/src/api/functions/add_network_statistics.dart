// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Adds the specified data to data usage statistics. Can be called before
/// authorization
/// Returns [Ok]
@immutable
class AddNetworkStatistics extends TdFunction {
  const AddNetworkStatistics({
    required this.entry,
  });

  /// [entry] The network statistics entry with the data to be added to
  /// statistics
  final NetworkStatisticsEntry entry;

  static const String constructor = 'addNetworkStatistics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'entry': entry.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AddNetworkStatistics &&
          const DeepCollectionEquality().equals(other.entry, entry));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(entry)]);
}
