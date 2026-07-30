// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A forwarded messages
@immutable
class PushMessageContentMessageForwards extends PushMessageContent {
  const PushMessageContentMessageForwards({
    required this.totalCount,
  });

  /// [totalCount] Number of forwarded messages
  final int totalCount;

  static const String constructor = 'pushMessageContentMessageForwards';

  static PushMessageContentMessageForwards? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentMessageForwards(
      totalCount: (json['total_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PushMessageContentMessageForwards &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(totalCount)]);
}
