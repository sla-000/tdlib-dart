// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Ends screen sharing in a joined group call; not supported in live stories
/// Returns [Ok]
@immutable
class EndGroupCallScreenSharing extends TdFunction {
  const EndGroupCallScreenSharing({
    required this.groupCallId,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  static const String constructor = 'endGroupCallScreenSharing';

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
          other is EndGroupCallScreenSharing &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(groupCallId)]);
}
