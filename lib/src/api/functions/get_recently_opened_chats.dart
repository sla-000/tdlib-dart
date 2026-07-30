// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns recently opened chats. This is an offline method. Returns chats in
/// the order of last opening
/// Returns [Chats]
@immutable
class GetRecentlyOpenedChats extends TdFunction {
  const GetRecentlyOpenedChats({
    required this.limit,
  });

  /// [limit] The maximum number of chats to be returned
  final int limit;

  static const String constructor = 'getRecentlyOpenedChats';

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
          other is GetRecentlyOpenedChats &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(limit)]);
}
