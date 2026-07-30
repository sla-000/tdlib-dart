// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with a location
@immutable
class PushMessageContentLocation extends PushMessageContent {
  const PushMessageContentLocation({
    required this.isLive,
    required this.isPinned,
  });

  /// [isLive] True, if the location is live
  final bool isLive;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentLocation';

  static PushMessageContentLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentLocation(
      isLive: (json['is_live'] as bool?) ?? false,
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_live': isLive,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PushMessageContentLocation &&
          const DeepCollectionEquality().equals(other.isLive, isLive) &&
          const DeepCollectionEquality().equals(other.isPinned, isPinned));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(isLive),
        const DeepCollectionEquality().hash(isPinned)
      ]);
}
