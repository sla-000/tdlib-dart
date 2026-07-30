// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Loads more Saved Messages topics. The loaded topics will be sent through
/// updateSavedMessagesTopic. Topics are sorted by their topic.order in
/// descending order. Returns a 404 error if all topics have been loaded
/// Returns [Ok]
@immutable
class LoadSavedMessagesTopics extends TdFunction {
  const LoadSavedMessagesTopics({
    required this.limit,
  });

  /// [limit] The maximum number of topics to be loaded. For optimal
  /// performance, the number of loaded topics is chosen by TDLib and can be
  /// smaller than the specified limit, even if the end of the list is not
  /// reached
  final int limit;

  static const String constructor = 'loadSavedMessagesTopics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LoadSavedMessagesTopics &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(limit)]);
}
