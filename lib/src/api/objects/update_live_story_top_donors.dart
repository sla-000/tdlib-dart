// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The list of top donors in live story group call has changed
@immutable
class UpdateLiveStoryTopDonors extends Update {
  const UpdateLiveStoryTopDonors({
    required this.groupCallId,
    required this.donors,
  });

  /// [groupCallId] Identifier of the group call
  final int groupCallId;

  /// [donors] New list of live story donors
  final LiveStoryDonors donors;

  static const String constructor = 'updateLiveStoryTopDonors';

  static UpdateLiveStoryTopDonors? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateLiveStoryTopDonors(
      groupCallId: (json['group_call_id'] as int?) ?? 0,
      donors:
          LiveStoryDonors.fromJson(json['donors'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'donors': donors.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateLiveStoryTopDonors &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality().equals(other.donors, donors));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(donors)
      ]);
}
