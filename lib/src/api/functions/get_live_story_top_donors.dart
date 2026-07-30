import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
