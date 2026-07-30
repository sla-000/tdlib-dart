// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Reports a false deletion of a message by aggressive anti-spam checks;
/// requires administrator rights in the supergroup. Can be called only for
/// messages from chatEventMessageDeleted with
/// can_report_anti_spam_false_positive == true
/// Returns [Ok]
@immutable
class ReportSupergroupAntiSpamFalsePositive extends TdFunction {
  const ReportSupergroupAntiSpamFalsePositive({
    required this.supergroupId,
    required this.messageId,
  });

  /// [supergroupId] Supergroup identifier
  final int supergroupId;

  /// [messageId] Identifier of the erroneously deleted message from
  /// chatEventMessageDeleted
  final int messageId;

  static const String constructor = 'reportSupergroupAntiSpamFalsePositive';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReportSupergroupAntiSpamFalsePositive &&
          const DeepCollectionEquality()
              .equals(other.supergroupId, supergroupId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(supergroupId),
        const DeepCollectionEquality().hash(messageId)
      ]);
}
