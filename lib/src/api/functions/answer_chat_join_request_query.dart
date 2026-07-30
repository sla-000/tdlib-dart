// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AnswerChatJoinRequestQuery &&
          const DeepCollectionEquality().equals(other.queryId, queryId) &&
          const DeepCollectionEquality().equals(other.result, result) &&
          const DeepCollectionEquality().equals(other.url, url));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(queryId),
        const DeepCollectionEquality().hash(result),
        const DeepCollectionEquality().hash(url)
      ]);
}
