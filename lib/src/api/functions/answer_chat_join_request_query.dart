import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets the result of a chat join query; for bots only
/// Returns [Ok]
@immutable
class AnswerChatJoinRequestQuery extends TdFunction {
  const AnswerChatJoinRequestQuery({
    required this.queryId,
    required this.result,
    required this.url,
  });

  /// [queryId] Identifier of the query
  final int queryId;

  /// [result] The result
  final ChatJoinRequestResult result;

  /// [url] URL of the Web App to open
  final String url;

  static const String constructor = 'answerChatJoinRequestQuery';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'query_id': queryId,
        'result': result.toJson(),
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
