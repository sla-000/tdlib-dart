// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the minimum number of Telegram Stars that must be paid by general
/// participant for each sent message to a live story call. Requires
/// groupCall.can_be_managed right
/// Returns [Ok]
@immutable
class SetGroupCallPaidMessageStarCount extends TdFunction {
  const SetGroupCallPaidMessageStarCount({
    required this.groupCallId,
    required this.paidMessageStarCount,
  });

  /// [groupCallId] Group call identifier; must be an identifier of a live story
  /// call
  final int groupCallId;

  /// [paidMessageStarCount] The new minimum number of Telegram Stars;
  /// 0-getOption("paid_group_call_message_star_count_max")
  final int paidMessageStarCount;

  static const String constructor = 'setGroupCallPaidMessageStarCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'paid_message_star_count': paidMessageStarCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetGroupCallPaidMessageStarCount &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality()
              .equals(other.paidMessageStarCount, paidMessageStarCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(paidMessageStarCount)
      ]);
}
