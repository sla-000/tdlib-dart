// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of requests to join a chat
@immutable
class ChatJoinRequests extends TdObject {
  const ChatJoinRequests({
    required this.totalCount,
    required this.requests,
  });

  /// [totalCount] Approximate total number of requests found
  final int totalCount;

  /// [requests] List of the requests
  final List<ChatJoinRequest> requests;

  static const String constructor = 'chatJoinRequests';

  static ChatJoinRequests? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatJoinRequests(
      totalCount: (json['total_count'] as int?) ?? 0,
      requests: List<ChatJoinRequest>.from(
          ((json['requests'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  ChatJoinRequest.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'requests': requests.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatJoinRequests &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount) &&
          const DeepCollectionEquality().equals(other.requests, requests));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(totalCount),
        const DeepCollectionEquality().hash(requests)
      ]);
}
