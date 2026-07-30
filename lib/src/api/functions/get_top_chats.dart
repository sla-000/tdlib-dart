// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a list of frequently used chats
/// Returns [Chats]
@immutable
class GetTopChats extends TdFunction {
  const GetTopChats({
    required this.category,
    required this.limit,
  });

  /// [category] Category of chats to be returned
  final TopChatCategory category;

  /// [limit] The maximum number of chats to be returned; up to 30
  final int limit;

  static const String constructor = 'getTopChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'category': category.toJson(),
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetTopChats &&
          const DeepCollectionEquality().equals(other.category, category) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(category),
        const DeepCollectionEquality().hash(limit)
      ]);
}
