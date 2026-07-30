// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the list of top live story donors
/// Returns [LiveStoryDonors]
@immutable
class GetLiveStoryTopDonors extends TdFunction {
  const GetLiveStoryTopDonors({
    required this.groupCallId,
  });

  /// [groupCallId] Group call identifier of the live story
  final int groupCallId;

  static const String constructor = 'getLiveStoryTopDonors';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetLiveStoryTopDonors &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(groupCallId)]);
}
