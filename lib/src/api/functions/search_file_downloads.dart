// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Searches for files in the file download list or recently downloaded files
/// from the list
/// Returns [FoundFileDownloads]
@immutable
class SearchFileDownloads extends TdFunction {
  const SearchFileDownloads({
    required this.query,
    required this.onlyActive,
    required this.onlyCompleted,
    required this.offset,
    required this.limit,
  });

  /// [query] Query to search for; may be empty to return all downloaded files
  final String query;

  /// [onlyActive] Pass true to search only for active downloads, including
  /// paused
  final bool onlyActive;

  /// [onlyCompleted] Pass true to search only for completed downloads
  final bool onlyCompleted;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of files to be returned
  final int limit;

  static const String constructor = 'searchFileDownloads';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'query': query,
        'only_active': onlyActive,
        'only_completed': onlyCompleted,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SearchFileDownloads &&
          const DeepCollectionEquality().equals(other.query, query) &&
          const DeepCollectionEquality().equals(other.onlyActive, onlyActive) &&
          const DeepCollectionEquality()
              .equals(other.onlyCompleted, onlyCompleted) &&
          const DeepCollectionEquality().equals(other.offset, offset) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(query),
        const DeepCollectionEquality().hash(onlyActive),
        const DeepCollectionEquality().hash(onlyCompleted),
        const DeepCollectionEquality().hash(offset),
        const DeepCollectionEquality().hash(limit)
      ]);
}
