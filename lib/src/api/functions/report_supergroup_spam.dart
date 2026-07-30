// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Reports messages in a supergroup as spam; requires administrator rights in
/// the supergroup
/// Returns [Ok]
@immutable
class ReportSupergroupSpam extends TdFunction {
  const ReportSupergroupSpam({
    required this.supergroupId,
    required this.messageIds,
  });

  /// [supergroupId] Supergroup identifier
  final int supergroupId;

  /// [messageIds] Identifiers of messages to report. Use
  /// messageProperties.can_report_supergroup_spam to check whether the message
  /// can be reported
  final List<int> messageIds;

  static const String constructor = 'reportSupergroupSpam';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'message_ids': messageIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReportSupergroupSpam &&
          const DeepCollectionEquality()
              .equals(other.supergroupId, supergroupId) &&
          const DeepCollectionEquality().equals(other.messageIds, messageIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(supergroupId),
        const DeepCollectionEquality().hash(messageIds)
      ]);
}
