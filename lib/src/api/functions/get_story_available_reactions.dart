// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns reactions, which can be chosen for a story
/// Returns [AvailableReactions]
@immutable
class GetStoryAvailableReactions extends TdFunction {
  const GetStoryAvailableReactions({
    required this.rowSize,
  });

  /// [rowSize] Number of reaction per row, 5-25
  final int rowSize;

  static const String constructor = 'getStoryAvailableReactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'row_size': rowSize,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetStoryAvailableReactions &&
          const DeepCollectionEquality().equals(other.rowSize, rowSize));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(rowSize)]);
}
