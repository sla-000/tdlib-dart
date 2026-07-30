// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains 0-based positions of matched objects
@immutable
class FoundPositions extends TdObject {
  const FoundPositions({
    required this.totalCount,
    required this.positions,
  });

  /// [totalCount] Total number of matched objects
  final int totalCount;

  /// [positions] The positions of the matched objects
  final List<int> positions;

  static const String constructor = 'foundPositions';

  static FoundPositions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FoundPositions(
      totalCount: json['total_count'] as int,
      positions: List<int>.from(
          ((json['positions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'positions': positions.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is FoundPositions &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount) &&
          const DeepCollectionEquality().equals(other.positions, positions));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(totalCount),
        const DeepCollectionEquality().hash(positions)
      ]);
}
