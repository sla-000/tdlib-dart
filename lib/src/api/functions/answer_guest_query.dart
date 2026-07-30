import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets the result of a guest query; for bots only
/// Returns [InlineMessageId]
@immutable
class AnswerGuestQuery extends TdFunction {
  const AnswerGuestQuery({
    required this.guestQueryId,
    required this.result,
  });

  /// [guestQueryId] Identifier of the guest query
  final int guestQueryId;

  /// [result] The result of the query
  final InputInlineQueryResult result;

  static const String constructor = 'answerGuestQuery';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'guest_query_id': guestQueryId,
        'result': result.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
